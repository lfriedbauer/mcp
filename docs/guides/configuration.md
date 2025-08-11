# Configuration Guide

This guide explains how to configure MCP servers for different use cases. Whether you're a beginner or advanced user, you'll find examples and explanations here.

## 🎯 Quick Start

**New to MCP configuration?** Start here:
1. Copy an example from [`/examples/configurations/`](../../examples/configurations/)
2. Modify the values to match your setup
3. Test with MCP Inspector
4. Iterate and improve

## 📝 Configuration Basics

### File Structure
MCP configurations are JSON files with this basic structure:

```json
{
  "mcpServers": {
    "server-name": {
      "command": "command-to-run",
      "args": ["argument1", "argument2"],
      "env": {
        "ENVIRONMENT_VARIABLE": "value"
      }
    }
  }
}
```

### Key Components

**`mcpServers`**: Root object containing all your server configurations

**`server-name`**: A unique name for your server (you choose this)

**`command`**: The command to start the server (usually `npx` for npm packages)

**`args`**: Array of arguments passed to the command

**`env`**: Environment variables the server needs

## 🔧 Environment Variables

### Why Use Environment Variables?
- **Security**: Keep secrets out of configuration files
- **Flexibility**: Change values without editing configs
- **Sharing**: Share configs without exposing credentials

### Setting Up .env Files
1. **Copy the template**: `cp .env.example .env`
2. **Edit with real values**: Use your editor to fill in credentials
3. **Keep it private**: Never commit `.env` files to version control

### Common Environment Variables

**For Supabase:**
```bash
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your_anon_key_here
SUPABASE_SERVICE_KEY=your_service_role_key_here
```

**For File Systems:**
```bash
FILESYSTEM_ALLOWED_PATHS=/safe/directory/path
```

**For Development:**
```bash
NODE_ENV=development
DEBUG=mcp:*
LOG_LEVEL=info
```

## 📁 Configuration Examples

### Beginner: File System Only
**Use case**: Safe exploration with local files

```json
{
  "mcpServers": {
    "files": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-filesystem", "~/mcp-test"],
      "env": {
        "FILESYSTEM_ALLOWED_PATHS": "~/mcp-test"
      }
    }
  }
}
```

**Safety features:**
- ✅ Limited to one safe directory
- ✅ No external network access
- ✅ Easy to understand and debug

### Intermediate: Database Connection
**Use case**: Read-only database access

```json
{
  "mcpServers": {
    "database": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-supabase"],
      "env": {
        "SUPABASE_URL": "https://your-project.supabase.co",
        "SUPABASE_ANON_KEY": "your_anon_key_here"
      }
    }
  }
}
```

**Safety features:**
- ✅ Read-only permissions with anon key
- ✅ Row Level Security enforced
- ✅ No destructive operations possible

### Advanced: Multiple Servers
**Use case**: Production setup with multiple data sources

```json
{
  "mcpServers": {
    "production-db": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-supabase"],
      "env": {
        "SUPABASE_URL": "https://prod-project.supabase.co",
        "SUPABASE_SERVICE_KEY": "service_role_key_here"
      }
    },
    "file-storage": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-filesystem", "/data/uploads"],
      "env": {
        "FILESYSTEM_ALLOWED_PATHS": "/data/uploads:/data/exports"
      }
    },
    "api-connector": {
      "command": "node",
      "args": ["custom-server.js"],
      "cwd": "/path/to/custom/server",
      "env": {
        "API_KEY": "your_api_key",
        "API_BASE_URL": "https://api.example.com"
      }
    }
  }
}
```

**Advanced features:**
- 🚀 Multiple data sources
- 🚀 Custom servers
- 🚀 Production credentials
- ⚠️ **Requires careful security review**

## 🔒 Security Best Practices

### Credential Management
```bash
# ✅ Good: Use environment variables
"env": {
  "API_KEY": "${API_KEY}"
}

# ❌ Bad: Hard-code credentials
"env": {
  "API_KEY": "sk-1234567890abcdef"
}
```

### Permission Levels
**Start restrictive, expand gradually:**

1. **Read-only access** first
2. **Limited scope** (specific tables/folders)
3. **Test environment** before production
4. **Monitor usage** for unusual activity

### Access Controls
```json
{
  "env": {
    "SUPABASE_ANON_KEY": "anon_key_here",
    "ALLOWED_TABLES": "public.users,public.posts",
    "READ_ONLY": "true"
  }
}
```

## 🧪 Testing Configurations

### Step-by-Step Testing
1. **Start with minimal config** (one server, read-only)
2. **Test connection** in MCP Inspector
3. **Try basic operations** (list, read)
4. **Gradually add complexity**
5. **Document what works**

### Debugging Tips
```bash
# Enable debug logs
export DEBUG=mcp:*

# Test server manually
npx @modelcontextprotocol/server-supabase

# Check environment variables
echo $SUPABASE_URL
```

### Common Issues
- **Wrong paths**: Use absolute paths when possible
- **Missing env vars**: Check `.env` file is loaded
- **Permission errors**: Verify API key permissions
- **Network issues**: Test connectivity manually

## 📊 Configuration Patterns

### Development vs Production
```json
// development.json
{
  "mcpServers": {
    "dev-db": {
      "env": {
        "SUPABASE_URL": "https://dev-project.supabase.co",
        "SUPABASE_ANON_KEY": "dev_anon_key",
        "DEBUG": "mcp:*"
      }
    }
  }
}

// production.json
{
  "mcpServers": {
    "prod-db": {
      "env": {
        "SUPABASE_URL": "https://prod-project.supabase.co",
        "SUPABASE_SERVICE_KEY": "prod_service_key",
        "LOG_LEVEL": "error"
      }
    }
  }
}
```

### Team Configurations
```json
// shared-template.json (committed to git)
{
  "mcpServers": {
    "team-db": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-supabase"],
      "env": {
        "SUPABASE_URL": "${TEAM_SUPABASE_URL}",
        "SUPABASE_ANON_KEY": "${TEAM_SUPABASE_KEY}"
      }
    }
  }
}

// team-instructions.md
# Each team member should:
# 1. Copy shared-template.json to my-config.json
# 2. Set environment variables in .env
# 3. Never commit my-config.json or .env
```

## 📚 Advanced Topics

### Custom Servers
```json
{
  "mcpServers": {
    "custom-api": {
      "command": "node",
      "args": ["server.js"],
      "cwd": "/path/to/custom/server",
      "env": {
        "PORT": "3001",
        "API_KEY": "your_key"
      }
    }
  }
}
```

### Conditional Configurations
```bash
# Use different configs based on environment
if [ "$NODE_ENV" = "production" ]; then
  mcp-inspector --config production.json
else
  mcp-inspector --config development.json
fi
```

### Configuration Validation
```bash
# Validate JSON syntax
cat config.json | jq '.'

# Test server startup
npx @modelcontextprotocol/server-supabase --help
```

## 🔗 Resources

- [Example Configurations](../../examples/configurations/)
- [Environment Templates](../../templates/config/)
- [Troubleshooting Guide](../troubleshooting.md)
- [Official MCP Docs](https://modelcontextprotocol.io/)

---

**Need help with configuration?** Check our [FAQ](../faq.md) or ask in the community Discord!
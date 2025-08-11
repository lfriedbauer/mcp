# MCP Tools Collection

Welcome to your personal collection of **Model Context Protocol (MCP)** tools! This repository is designed to help you organize, manage, and learn about different MCP servers and tools in a beginner-friendly way.

## 🚀 What is this repository for?

This repository serves as your central hub for:
- **Collecting multiple MCP tools** in one organized place
- **Learning about MCP** step by step at your own pace
- **Managing configurations** for different MCP servers
- **Sharing setups** and getting help from the community

## 📂 Repository Structure

Our folder structure keeps everything organized and conflict-free:

```
mcp/
├── supabase-mcp/           # Supabase MCP server
├── inspector/              # MCP Inspector tool
├── tools/                  # Future MCP tools go here
├── docs/                   # Documentation and guides
├── examples/               # Configuration examples
├── templates/              # Template files
└── scripts/                # Automation scripts
```

### Tool Folders
Each MCP tool has its own dedicated folder with:
- ✅ **Individual README** with setup instructions
- ✅ **Configuration files** specific to that tool
- ✅ **Examples** and usage guides
- ✅ **No conflicts** with other tools

## 🎯 Getting Started Guide

### ⚡ Super Quick Start (30 minutes)
**Want to get started immediately?** Follow our [Quick Start Checklist](QUICKSTART.md) - it includes an automated setup script and gets you running in 30 minutes!

### For Complete Beginners

1. **Start Here**: Read the [MCP Basics Guide](docs/getting-started/mcp-basics.md)
2. **Choose Your First Tool**: We recommend starting with the [Inspector](inspector/README.md)
3. **Follow Setup**: Each tool folder has step-by-step instructions
4. **Get Help**: Check our [Troubleshooting Guide](docs/troubleshooting.md)

### Quick Start

```bash
# Option 1: Use our automated setup script
curl -sSL https://raw.githubusercontent.com/lfriedbauer/mcp/main/scripts/setup.sh | bash

# Option 2: Manual setup
# Clone this repository
git clone <your-repo-url>
cd mcp

# Choose a tool to start with
cd inspector  # or cd supabase-mcp

# Follow the README in that folder
```

## 📚 Learning Progression Path

We've designed a learning path that builds your knowledge gradually:

### 🌱 **Level 1: Beginner**
- [ ] Learn what MCP is → [MCP Basics](docs/getting-started/mcp-basics.md)
- [ ] Set up MCP Inspector → [Inspector Setup](inspector/README.md)
- [ ] Try your first MCP server → [First Server Guide](docs/getting-started/first-server.md)

### 🌿 **Level 2: Intermediate**
- [ ] Set up Supabase MCP → [Supabase Setup](supabase-mcp/README.md)
- [ ] Create custom configurations → [Configuration Guide](docs/guides/configuration.md)
- [ ] Connect multiple tools → [Multi-tool Setup](docs/guides/multi-tool.md)

### 🌳 **Level 3: Advanced**
- [ ] Build your own MCP server → [Development Guide](docs/guides/development.md)
- [ ] Contribute to the community → [Contributing Guide](docs/guides/contributing.md)
- [ ] Create automation scripts → [Automation Guide](docs/guides/automation.md)

## 🛡️ Safety Guidelines

**Before you start**, please read these important safety guidelines:

- ⚠️ **Never share API keys** or credentials in public
- ⚠️ **Start with read-only permissions** when testing
- ⚠️ **Backup your data** before connecting MCP tools
- ⚠️ **Use test environments** first
- ⚠️ **Check tool documentation** before running

## 🔧 Available Tools

### Currently Set Up
- **[MCP Inspector](inspector/README.md)** - Debug and explore MCP servers
- **[Supabase MCP](supabase-mcp/README.md)** - Connect to Supabase databases

### Want to Add More?
1. Create a new folder in `tools/`
2. Follow our [Adding New Tools Guide](docs/guides/adding-tools.md)
3. Check our [Configuration Guide](docs/guides/configuration.md)
4. Share with the community!

## 📖 Documentation

- **[Getting Started](docs/getting-started/)** - Begin your MCP journey
- **[Configuration Examples](examples/)** - Ready-to-use configs
- **[Troubleshooting](docs/troubleshooting.md)** - Common issues and solutions
- **[FAQ](docs/faq.md)** - Frequently asked questions

## 🆘 Need Help?

- 📚 Check our [Troubleshooting Guide](docs/troubleshooting.md)
- 💬 Look at [Common Issues](docs/common-issues.md)
- 🐛 Found a bug? Open an issue
- 💡 Have a suggestion? We'd love to hear it!

## 🔗 Official Resources

- [MCP Official Documentation](https://modelcontextprotocol.io/)
- [MCP GitHub Repository](https://github.com/modelcontextprotocol)
- [Community Examples](https://github.com/modelcontextprotocol/servers)

## 📄 License

This repository is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

**Happy learning!** 🎉 Take your time, ask questions, and remember that everyone starts somewhere. The MCP community is here to help you succeed.
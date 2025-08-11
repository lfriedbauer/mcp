# MCP Inspector

The MCP Inspector is your debugging companion for Model Context Protocol servers. It provides a visual interface to explore, test, and debug MCP servers, making it the perfect starting point for beginners.

## 🎯 What does this tool do?

The MCP Inspector helps you:
- **Visualize MCP server capabilities** in a user-friendly interface
- **Test tools and resources** before using them in production
- **Debug connection issues** with detailed error messages
- **Explore server schemas** and available functions
- **Learn MCP concepts** through hands-on exploration

## 🌟 Why start with Inspector?

**Perfect for beginners because:**
- ✅ **Visual interface** - no command line required
- ✅ **Safe exploration** - read-only by default
- ✅ **Real-time feedback** - see results immediately
- ✅ **Error explanations** - understand what went wrong
- ✅ **No configuration** needed to get started

## 🚀 Quick Setup

### Prerequisites
- Node.js 18+ installed
- npm or yarn package manager
- A web browser

### Step 1: Install the Inspector
```bash
# Navigate to this folder
cd inspector

# Install MCP Inspector
npm install -g @modelcontextprotocol/inspector

# Or use npx (no installation needed)
npx @modelcontextprotocol/inspector
```

### Step 2: Launch the Inspector
```bash
# Start the inspector
mcp-inspector

# Or with npx
npx @modelcontextprotocol/inspector
```

### Step 3: Open in Browser
The inspector will automatically open in your browser at:
```
http://localhost:5173
```

## 🎓 Learning Guide

### First Steps (5 minutes)
1. **Launch the Inspector** using the commands above
2. **Explore the interface** - click around to get familiar
3. **Try the demo server** (usually available by default)
4. **Check the capabilities** tab to see what's available

### Connecting Your First Server (10 minutes)
1. **Add a server** using the "+" button
2. **Enter server details** (see examples below)
3. **Test the connection** using the connection status indicator
4. **Explore available tools** in the capabilities view

### Understanding the Interface (15 minutes)
- **🔌 Connections**: Manage your MCP server connections
- **🛠️ Tools**: Browse and test available tools
- **📁 Resources**: Explore server resources and schemas
- **💬 Chat**: Interactive testing with the server
- **⚙️ Settings**: Configure inspector preferences

## 📝 Configuration Examples

### Local Development Server
```json
{
  "name": "Local Test Server",
  "command": "node",
  "args": ["server.js"],
  "cwd": "/path/to/your/server"
}
```

### Supabase MCP Server
```json
{
  "name": "My Supabase DB",
  "command": "npx",
  "args": ["@modelcontextprotocol/server-supabase"],
  "env": {
    "SUPABASE_URL": "https://your-project.supabase.co",
    "SUPABASE_ANON_KEY": "your-anon-key"
  }
}
```

### File System Server
```json
{
  "name": "File Explorer",
  "command": "npx",
  "args": ["@modelcontextprotocol/server-filesystem"],
  "env": {
    "ALLOWED_PATHS": "/Users/yourname/Documents"
  }
}
```

## 🧪 Testing Your Setup

### Quick Health Check
1. **Open the Inspector** in your browser
2. **Check connection status** - should show green "Connected"
3. **Browse capabilities** - should list available tools
4. **Try a simple tool** - test with safe, read-only operations

### Step-by-Step Testing
```bash
# 1. Verify Inspector is running
curl http://localhost:5173

# 2. Check for any errors in the console
# Open browser dev tools (F12) and look for red errors

# 3. Test server connection
# Use the Inspector UI to connect to a server and check status
```

## 🎯 Common Use Cases

### Debugging New Servers
- **Connection issues**: Check if the server starts correctly
- **Tool problems**: Test individual tools in isolation
- **Schema validation**: Verify resource and tool schemas
- **Error diagnosis**: See detailed error messages and stack traces

### Learning MCP
- **Explore examples**: Connect to demo servers to see how MCP works
- **Understand capabilities**: See what different servers can do
- **Practice safely**: Test tools without affecting production data
- **Build confidence**: Get comfortable before using real applications

### Development Workflow
- **Prototype tools**: Test new tool implementations
- **Validate resources**: Check resource schemas and responses
- **Integration testing**: Verify server behavior before deployment
- **Documentation**: Generate examples for your own servers

## 🐛 Troubleshooting

### Inspector Won't Start
```bash
# Check if port 5173 is already in use
lsof -i :5173

# Try a different port
mcp-inspector --port 3000

# Clear npm cache if installation issues
npm cache clean --force
```

### Can't Connect to Server
1. **Check server logs** for startup errors
2. **Verify environment variables** are set correctly
3. **Test server manually** outside of Inspector
4. **Check firewall settings** if connecting remotely

### Browser Issues
- **Clear browser cache** and reload
- **Disable browser extensions** that might interfere
- **Try incognito/private mode** to rule out cache issues
- **Check browser console** for JavaScript errors

## 🎨 Interface Tips

### Keyboard Shortcuts
- `Ctrl/Cmd + R` - Refresh server connection
- `Ctrl/Cmd + D` - Duplicate server configuration
- `Ctrl/Cmd + E` - Edit server settings
- `Esc` - Close modal dialogs

### Pro Tips
- **Pin frequently used tools** for quick access
- **Use the search feature** to find specific capabilities
- **Export configurations** to share with team members
- **Save successful queries** as templates

## 📚 Learning Resources

### Official Documentation
- [MCP Inspector Docs](https://modelcontextprotocol.io/inspector)
- [MCP Protocol Specification](https://modelcontextprotocol.io/specification)

### Video Tutorials
- Getting Started with MCP Inspector
- Debugging Common MCP Issues
- Building Your First MCP Server

### Community Examples
- [Example Configurations](../examples/inspector/)
- [Common Server Setups](../templates/inspector/)

## 🔗 Next Steps

Once you're comfortable with the Inspector:

1. **Set up your first real server** → [Supabase MCP](../supabase-mcp/README.md)
2. **Learn about MCP basics** → [MCP Fundamentals](../docs/getting-started/mcp-basics.md)
3. **Join the community** → [Contributing Guide](../docs/guides/contributing.md)

---

**Ready to explore?** Launch the Inspector and start your MCP journey! 🚀

Need help? Check our [Troubleshooting Guide](../docs/troubleshooting.md) or ask the community.
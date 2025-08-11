# Your First MCP Server: A Beginner's Guide

Congratulations on taking the next step in your MCP journey! This guide will walk you through setting up your very first MCP server - a simple file system server that's perfect for learning.

## 🎯 What You'll Learn

By the end of this guide, you'll:
- ✅ Understand how MCP servers work
- ✅ Set up a file system MCP server
- ✅ Connect it to the MCP Inspector
- ✅ Perform your first MCP operations
- ✅ Feel confident to try more advanced servers

## 🧰 What You'll Need

### Prerequisites
- **Node.js 18+** installed on your computer
- **MCP Inspector** set up ([Installation guide](../../inspector/README.md))
- **Basic comfort** with the command line
- **15-30 minutes** of your time

### Safety Check
✅ We'll only work with a test folder you create  
✅ No sensitive data will be accessed  
✅ All operations are reversible  
✅ Perfect for experimentation  

## 🚀 Step-by-Step Setup

### Step 1: Create a Test Workspace
```bash
# Create a safe test folder
mkdir ~/mcp-test
cd ~/mcp-test

# Create some example files to work with
echo "Hello MCP!" > hello.txt
echo "This is a test file" > test.txt
mkdir documents
echo "Sample document" > documents/sample.md
```

### Step 2: Install the File System Server
```bash
# Install the official file system MCP server
npm install -g @modelcontextprotocol/server-filesystem

# Verify installation
mcp-server-filesystem --help
```

### Step 3: Configure the Server
Create a configuration file for your server:

```bash
# Create a config file
cat > mcp-config.json << 'EOF'
{
  "mcpServers": {
    "filesystem": {
      "command": "mcp-server-filesystem",
      "args": ["~/mcp-test"],
      "env": {
        "FILESYSTEM_ALLOWED_PATHS": "~/mcp-test"
      }
    }
  }
}
EOF
```

### Step 4: Start the Inspector
```bash
# Launch MCP Inspector
npx @modelcontextprotocol/inspector

# It should open automatically at http://localhost:5173
```

### Step 5: Connect Your Server
1. **Open the Inspector** in your browser
2. **Click "Add Server"** (+ button)
3. **Enter server details**:
   - **Name**: "My First File Server"
   - **Command**: `mcp-server-filesystem`
   - **Arguments**: `~/mcp-test`
4. **Click "Connect"**

## 🧪 Testing Your Server

### Verify the Connection
You should see:
- ✅ **Green connection status** in the Inspector
- ✅ **Available tools** listed in the capabilities tab
- ✅ **Resources** showing your test files

### Try These Operations

#### 1. List Files
In the Inspector tools section:
- **Find**: "list_directory" tool
- **Click**: "Execute"
- **See**: Your test files appear!

#### 2. Read a File
- **Find**: "read_file" tool
- **Enter**: `hello.txt` as the file path
- **Execute**: See the file contents

#### 3. Create a New File
- **Find**: "write_file" tool
- **Enter**: 
  - Path: `new-file.txt`
  - Content: `Created through MCP!`
- **Execute**: Check your folder - the file should appear

## 🎉 Congratulations!

You've successfully:
- ✅ Set up your first MCP server
- ✅ Connected it to the Inspector
- ✅ Performed file operations through MCP
- ✅ Seen how AI could interact with your files

## 🤔 Understanding What Just Happened

### The Magic Behind the Scenes
1. **Your Inspector** sent a request: "List files in this directory"
2. **The MCP server** received and processed the request
3. **The file system** was safely accessed with proper permissions
4. **The server** returned a structured response
5. **The Inspector** displayed the results in a user-friendly way

### Why This Matters
This same pattern works for:
- **Databases** (instead of files)
- **APIs** (instead of the file system)
- **Cloud services** (instead of local storage)
- **Any tool** that has an MCP server

## 🔍 Exploring Further

### Safe Experiments to Try
- **Create folders** and organize files
- **Search for specific files** by name
- **Read different file types** (text, markdown, etc.)
- **Monitor changes** in real-time

### Understanding Permissions
Notice how the server:
- ✅ **Only accesses** the folder you specified
- ✅ **Can't reach** other parts of your system
- ✅ **Requires explicit permission** for each operation
- ✅ **Logs all activities** for transparency

## 🚨 Troubleshooting

### Server Won't Start
```bash
# Check if Node.js is installed
node --version

# Verify the server installation
npm list -g @modelcontextprotocol/server-filesystem

# Try reinstalling
npm uninstall -g @modelcontextprotocol/server-filesystem
npm install -g @modelcontextprotocol/server-filesystem
```

### Can't Connect in Inspector
1. **Check the server logs** in the Inspector console
2. **Verify the file path** exists and is accessible
3. **Ensure no typos** in the configuration
4. **Try restarting** the Inspector

### Permission Errors
- **Check folder permissions**: `ls -la ~/mcp-test`
- **Verify the path**: Make sure `~/mcp-test` exists
- **Try absolute paths**: `/Users/yourname/mcp-test` instead of `~/mcp-test`

## 🎯 What's Next?

### Ready for More?
1. **Try the Supabase server** → [Supabase Setup](../../supabase-mcp/README.md)
2. **Learn about configuration** → [Configuration Guide](../guides/configuration.md)
3. **Explore other servers** → [Server Directory](../guides/server-directory.md)

### Build Confidence
- **Experiment freely** with your test folder
- **Try different file operations** to see what's possible
- **Think about use cases** where this could help you
- **Share your experience** with the community

## 💡 Real-World Applications

Now that you understand the basics, imagine using MCP to:
- **Organize your documents** with AI assistance
- **Analyze code files** for patterns and issues
- **Automate file processing** tasks
- **Create smart file management** workflows

## 🔗 Resources

- [File System Server Docs](https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem)
- [MCP Inspector Guide](../../inspector/README.md)
- [Next Steps: Database Integration](../../supabase-mcp/README.md)

---

**Great job completing your first MCP server setup!** 🎉

You're now ready to explore more advanced servers and start building real-world integrations. The MCP world is your oyster!
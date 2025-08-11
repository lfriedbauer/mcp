# Quick Start Checklist

New to MCP? Follow this checklist to get up and running in 30 minutes! ✅

## 🎯 Goal
By the end of this checklist, you'll have:
- MCP Inspector running
- A working file system server
- Confidence to explore further

## 📋 Prerequisites Checklist
- [ ] Computer with internet access
- [ ] 30 minutes of free time
- [ ] Willingness to learn something cool!

**Check if you have Node.js:**
```bash
node --version
```
- [ ] Shows version 18 or higher? ✅ You're ready!
- [ ] Shows "command not found"? Install from [nodejs.org](https://nodejs.org) first

## 🚀 Step-by-Step Setup

### Step 1: Quick Setup (5 minutes)
- [ ] **Run our setup script**:
  ```bash
  curl -sSL https://raw.githubusercontent.com/lfriedbauer/mcp/main/scripts/setup.sh | bash
  ```
  *Or download the script manually if you prefer to review it first*

### Step 2: Start the Inspector (2 minutes)
- [ ] **Open a terminal** and run:
  ```bash
  cd ~/mcp-learning
  mcp-inspector
  ```
- [ ] **Open your browser** to `http://localhost:5173`
- [ ] **See the Inspector interface?** ✅ Great!

### Step 3: Connect Your First Server (5 minutes)
- [ ] **Click "Add Server"** (+ button) in the Inspector
- [ ] **Fill in the details**:
  - Name: `My First File Server`
  - Command: `mcp-server-filesystem`
  - Args: `~/mcp-learning`
- [ ] **Click "Connect"**
- [ ] **See green connection status?** ✅ Success!

### Step 4: Try It Out (10 minutes)
- [ ] **Browse to the "Tools" tab**
- [ ] **Find "list_directory" tool**
- [ ] **Click "Execute"** - see your test files?
- [ ] **Try "read_file" tool**:
  - Enter `hello.txt` as the path
  - Click "Execute" - see the content?
- [ ] **Try "write_file" tool**:
  - Path: `my-first-mcp-file.txt`
  - Content: `Hello from MCP! 🎉`
  - Click "Execute"
- [ ] **Check your folder** - new file created?

### Step 5: Celebrate! (2 minutes)
- [ ] **Take a screenshot** of your working Inspector
- [ ] **Check off this entire checklist** ✅
- [ ] **You're now an MCP user!** 🎉

## 🎉 Success! What's Next?

Congratulations! You've successfully:
✅ Set up MCP Inspector  
✅ Connected your first MCP server  
✅ Performed file operations through MCP  
✅ Seen the power of MCP in action  

## 🚀 Next Steps (Choose Your Adventure)

### 🌱 Keep Learning (Beginner Path)
- [ ] Read [MCP Basics Guide](docs/getting-started/mcp-basics.md) (10 min)
- [ ] Browse the [FAQ](docs/faq.md) to answer common questions
- [ ] Explore more file operations in the Inspector
- [ ] Join the [MCP Community Discord](https://discord.gg/mcp)

### 🌿 Try Real Data (Intermediate Path)
- [ ] Set up [Supabase MCP Server](supabase-mcp/README.md) (30 min)
- [ ] Connect to a real database
- [ ] Learn about [Configuration](docs/guides/configuration.md)
- [ ] Explore [Additional Servers](tools/README.md)

### 🌳 Build Something (Advanced Path)
- [ ] Create a custom configuration for your needs
- [ ] Learn about [Development](docs/guides/development.md)
- [ ] Build your own MCP server
- [ ] Contribute back to the community

## 🆘 Troubleshooting

**Something not working?** Try these quick fixes:

### Inspector won't start
```bash
# Try a different port
mcp-inspector --port 3000
```

### Can't connect to server
- Check that the path `~/mcp-learning` exists
- Make sure you're in the right directory
- Look for error messages in the Inspector console

### Still stuck?
- 📚 Check our [Troubleshooting Guide](docs/troubleshooting.md)
- 💬 Ask for help in [Discord](https://discord.gg/mcp)
- 🐛 Open an issue if you think it's a bug

## 📚 Quick Reference

**Important Commands:**
```bash
# Start Inspector
mcp-inspector

# Check Node.js version
node --version

# List global packages
npm list -g
```

**Important URLs:**
- Inspector: `http://localhost:5173`
- Your test folder: `~/mcp-learning`
- This repository: `https://github.com/lfriedbauer/mcp`

**Quick Links:**
- [MCP Basics](docs/getting-started/mcp-basics.md)
- [First Server Guide](docs/getting-started/first-server.md)
- [FAQ](docs/faq.md)
- [Troubleshooting](docs/troubleshooting.md)

---

## 🎯 Time Investment Summary

**Total time to complete:** ~30 minutes
- Setup: 5 minutes
- Inspector: 2 minutes  
- Server connection: 5 minutes
- Testing: 10 minutes
- Reading this checklist: 8 minutes

**Return on investment:** 🚀 **Unlimited!**

You now have the foundation to:
- Connect AI to your real data
- Automate tedious tasks
- Build powerful integrations
- Join the future of AI tooling

**Welcome to the MCP community!** 🎉
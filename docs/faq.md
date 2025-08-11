# Frequently Asked Questions (FAQ)

Got questions about MCP? You're in the right place! Here are answers to the most common questions from new users.

## 🤔 General Questions

### What is MCP and why should I care?
**MCP (Model Context Protocol)** is a standard way for AI applications to safely connect to your data and tools. Think of it as a secure bridge between AI and your systems. You should care because it:
- Lets AI help you with real tasks using your actual data
- Keeps your information secure with proper permissions
- Works with many different tools and services
- Is becoming the standard for AI integrations

### Is MCP safe to use?
**Yes, when used properly!** MCP is designed with security in mind:
- ✅ **Permission controls** - servers only do what you allow
- ✅ **Sandboxing** - each server runs independently  
- ✅ **No direct access** - AI never touches your data directly
- ✅ **Audit trails** - you can see what actions were performed

**Safety tips:**
- Start with read-only access
- Test with non-production data first
- Never share API keys publicly
- Review permissions before granting them

### Do I need to be a programmer to use MCP?
**Not at all!** This repository is designed for beginners:
- 🎯 **Visual tools** like MCP Inspector require no coding
- 🎯 **Step-by-step guides** walk you through everything
- 🎯 **Pre-built servers** handle the technical details
- 🎯 **Copy-paste configs** get you started quickly

You can start using MCP today and learn more advanced topics later!

## 🛠️ Technical Questions

### What's the difference between MCP servers and clients?
- **MCP Server**: Connects to your data/tools (like Supabase, file systems)
- **MCP Client**: The AI application that asks for things (like Claude, ChatGPT)
- **You**: Control both sides and decide what's allowed

Think of it like ordering at a restaurant:
- You (client) make requests
- The waiter (MCP server) handles your requests  
- The kitchen (your data) provides what you need

### Which MCP server should I start with?
**For absolute beginners**: Start with the **File System server**
- ✅ No external dependencies
- ✅ Uses files you already have
- ✅ Easy to understand
- ✅ Safe to experiment with

**For next steps**: Try the **Supabase server**
- ✅ Real database experience
- ✅ More powerful capabilities
- ✅ Good for learning SQL
- ✅ Scales to real applications

### Can I use multiple MCP servers at once?
**Absolutely!** In fact, that's one of MCP's strengths:
- Connect to your database AND file system
- Use different servers for different purposes
- Mix and match as needed
- Each server runs independently

See our [multi-server configuration example](../examples/configurations/multi-server.json).

### How do I know if an MCP server is working?
Look for these signs:
- ✅ **Green connection status** in MCP Inspector
- ✅ **Available tools** listed in capabilities
- ✅ **No error messages** in the console
- ✅ **Successful test operations**

If something's wrong, check our [Troubleshooting Guide](../docs/troubleshooting.md).

## 🔧 Setup Questions

### Why do I need Node.js?
Most MCP servers are built with Node.js because:
- 🎯 **Easy installation** with npm
- 🎯 **Cross-platform** (works on Mac, Windows, Linux)
- 🎯 **Large ecosystem** of available servers
- 🎯 **Active development** community

**Don't worry if you're new to Node.js** - our guides cover everything you need!

### What's the difference between npm and npx?
- **npm install**: Downloads and saves packages permanently
- **npx**: Runs packages temporarily without installing
- **npm install -g**: Installs packages globally (available everywhere)

**For beginners**: Use `npx` to try things out, then install globally if you like them.

### Why do I need environment variables?
Environment variables keep your secrets safe:
- 🔐 **API keys** don't go in your code
- 🔐 **Passwords** stay out of version control
- 🔐 **URLs** can change without code changes
- 🔐 **Configuration** is separate from application

**Example**: Instead of putting your API key in code, you put it in a `.env` file that stays private.

## 🚨 Troubleshooting Questions

### "Command not found" - what do I do?
This usually means something isn't installed or isn't in your PATH:

```bash
# Check what's installed
which node
which npm
npm list -g

# Fix PATH issues (Mac/Linux)
echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Windows: Add to PATH in system settings
```

### MCP Inspector shows a blank page - help!
Try these fixes in order:
1. **Hard refresh**: Ctrl/Cmd + Shift + R
2. **Try incognito mode** to rule out extensions
3. **Check browser console** (F12) for error messages
4. **Try a different browser**
5. **Restart the Inspector** and try again

### "Permission denied" errors - what's wrong?
Check these common causes:
- 📁 **File permissions**: Can you access the folder normally?
- 🔑 **API key permissions**: Is your key valid and has the right access?
- 🚫 **Path issues**: Are you using the correct file paths?
- 🔒 **Security policies**: Is your database/service blocking access?

### How do I know if my API keys are working?
**Test them manually first:**

```bash
# For Supabase
curl -H "Authorization: Bearer YOUR_KEY" \
     "https://your-project.supabase.co/rest/v1/"

# Should return database info, not an error
```

**Signs of working keys:**
- ✅ No "unauthorized" errors
- ✅ Data returns successfully  
- ✅ MCP Inspector shows green connection

## 📚 Learning Questions

### I'm completely new - where do I start?
Follow this exact path:
1. **Read [MCP Basics](getting-started/mcp-basics.md)** (10 minutes)
2. **Set up [MCP Inspector](../inspector/README.md)** (15 minutes)
3. **Try your [First Server](getting-started/first-server.md)** (30 minutes)
4. **Explore safely** with the file system server
5. **Move to databases** when you're comfortable

**Don't rush!** Take time to understand each step.

### How long does it take to learn MCP?
**For basic usage**: 1-2 hours
- Set up Inspector ✅
- Connect a simple server ✅
- Understand the basics ✅

**For intermediate skills**: 1-2 weeks
- Multiple servers ✅
- Custom configurations ✅
- Real-world applications ✅

**For advanced usage**: 1-2 months
- Building custom servers ✅
- Complex integrations ✅
- Contributing to ecosystem ✅

### What should I learn next after the basics?
**Immediate next steps:**
1. Try the [Supabase server](../supabase-mcp/README.md)
2. Learn about [configuration](guides/configuration.md)
3. Explore [other available servers](guides/server-directory.md)

**Medium-term goals:**
1. Build a real project using MCP
2. Contribute to the community
3. Learn about custom server development

### Can I use MCP for work projects?
**Absolutely!** MCP is production-ready:
- 🏢 **Used by major companies** already
- 🏢 **Open source and standardized**
- 🏢 **Growing ecosystem** of tools
- 🏢 **Active development** and support

**Just remember:**
- Test thoroughly before production
- Follow your company's security policies  
- Keep credentials secure
- Document your setup for team members

## 🤝 Community Questions

### Where can I get help?
**Great places to ask questions:**
- 💬 [Community Discord](https://discord.gg/mcp)
- 📱 [GitHub Discussions](https://github.com/modelcontextprotocol/servers/discussions)
- 📚 [Stack Overflow](https://stackoverflow.com/questions/tagged/model-context-protocol)
- 📖 This repository's [issue tracker](../../issues)

### How can I contribute back?
**Many ways to help:**
- 📝 **Improve documentation** - fix typos, add examples
- 🐛 **Report bugs** - help others avoid issues
- 💡 **Share your setups** - contribute configuration examples
- 🛠️ **Build new servers** - expand the ecosystem
- 🎓 **Help newcomers** - answer questions in community channels

### Is there a roadmap for MCP?
**Yes!** Check out:
- [Official MCP Roadmap](https://modelcontextprotocol.io/roadmap)
- [GitHub Project Boards](https://github.com/modelcontextprotocol)
- [Community Discussions](https://discord.gg/mcp)

**Major upcoming features:**
- More built-in servers
- Better development tools
- Enhanced security features
- Wider language support

---

## 🔍 Still Have Questions?

**Can't find your answer here?**
1. 🔍 **Search this repository** - use GitHub's search feature
2. 📚 **Check the official docs** - [modelcontextprotocol.io](https://modelcontextprotocol.io/)
3. 💬 **Ask the community** - we're friendly and helpful!
4. 📝 **Suggest FAQ additions** - help us improve this guide

**Remember**: Every expert was once a beginner asking the same questions. Don't hesitate to ask! 🤗
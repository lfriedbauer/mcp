# Troubleshooting Guide

Having issues with your MCP setup? Don't worry - this guide covers the most common problems and their solutions. Most issues are quick to fix once you know what to look for!

## 🚨 Quick Diagnostics

### Is Everything Working?
Run this quick checklist to identify where the problem might be:

- [ ] **Node.js installed?** Run `node --version` (need 18+)
- [ ] **MCP Inspector running?** Check `http://localhost:5173`
- [ ] **Server installed?** Check with `npm list -g`
- [ ] **Environment variables set?** Check your `.env` file
- [ ] **Network connectivity?** Try `ping google.com`

## 🔧 Installation Issues

### Node.js Problems
**Problem**: "node: command not found"
```bash
# Solution: Install Node.js
# Visit https://nodejs.org and download the LTS version
# Or use a package manager:

# macOS with Homebrew
brew install node

# Ubuntu/Debian
sudo apt update && sudo apt install nodejs npm

# Windows with Chocolatey
choco install nodejs
```

**Problem**: "npm: command not found"
```bash
# Solution: npm usually comes with Node.js
# If missing, install separately:

# macOS
brew install npm

# Ubuntu/Debian
sudo apt install npm

# Windows - reinstall Node.js from nodejs.org
```

### Package Installation Failures
**Problem**: Permission errors during `npm install -g`
```bash
# Solution 1: Use npx instead (recommended)
npx @modelcontextprotocol/inspector

# Solution 2: Fix npm permissions (macOS/Linux)
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'export PATH=~/.npm-global/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

# Solution 3: Use sudo (not recommended but works)
sudo npm install -g @modelcontextprotocol/inspector
```

**Problem**: Network/proxy issues
```bash
# Solution: Configure npm for your network
npm config set proxy http://proxy.company.com:8080
npm config set https-proxy http://proxy.company.com:8080
npm config set registry https://registry.npmjs.org/
```

## 🔌 Connection Issues

### Inspector Won't Start
**Problem**: Port 5173 already in use
```bash
# Check what's using the port
lsof -i :5173
# or on Windows
netstat -ano | findstr :5173

# Solution: Kill the process or use a different port
mcp-inspector --port 3000
```

**Problem**: Inspector starts but shows blank page
```bash
# Solution 1: Clear browser cache
# Ctrl/Cmd + Shift + R to hard refresh

# Solution 2: Try incognito/private browsing

# Solution 3: Check browser console for errors
# Press F12 and look for red error messages

# Solution 4: Try a different browser
```

### Server Connection Failures
**Problem**: "Failed to connect to server"
```bash
# Debug steps:
# 1. Check if server command exists
which mcp-server-filesystem
# or
npm list -g @modelcontextprotocol/server-filesystem

# 2. Test server manually
mcp-server-filesystem --help

# 3. Check server logs in Inspector console
# Look for detailed error messages

# 4. Verify environment variables
echo $SUPABASE_URL
cat .env
```

**Problem**: Server starts but immediately disconnects
```bash
# Common causes and solutions:

# 1. Wrong working directory
cd /correct/path/to/your/project

# 2. Missing environment variables
cp .env.example .env
# Edit .env with correct values

# 3. Invalid credentials
# Test credentials manually:
curl -H "Authorization: Bearer $SUPABASE_ANON_KEY" \
     "$SUPABASE_URL/rest/v1/"
```

## 🔐 Authentication & Permissions

### Environment Variable Issues
**Problem**: "Invalid API key" or authentication errors
```bash
# Debug environment variables:

# 1. Check if .env file exists and is readable
ls -la .env
cat .env

# 2. Verify variable format
echo "URL: $SUPABASE_URL"
echo "Key length: ${#SUPABASE_ANON_KEY}"

# 3. Check for invisible characters
cat -A .env
# Look for ^M (Windows line endings) or extra spaces

# 4. Test variables in a clean environment
env -i SUPABASE_URL="your-url" node -e "console.log(process.env.SUPABASE_URL)"
```

**Problem**: "Permission denied" errors
```bash
# For file system servers:
# 1. Check directory permissions
ls -la /path/to/your/directory

# 2. Ensure the path exists
mkdir -p /path/to/your/directory

# 3. Use absolute paths instead of relative ones
/Users/yourname/documents instead of ~/documents

# For database servers:
# 1. Verify API key permissions in Supabase dashboard
# 2. Check Row Level Security (RLS) policies
# 3. Test with service role key (carefully!)
```

## 🐛 Runtime Errors

### Query/Tool Execution Failures
**Problem**: "Tool execution failed"
```bash
# Debug steps:

# 1. Check the exact error message in Inspector
# Look at the detailed error in the console tab

# 2. Test with simpler operations first
# Try basic queries before complex ones

# 3. Validate your query syntax
# For SQL: Test in Supabase SQL editor first
# For file operations: Check file paths exist

# 4. Check server logs
# Look for detailed error traces
```

**Problem**: "Resource not found"
```bash
# Common fixes:

# 1. Verify resource names match exactly
# Case-sensitive! "Users" ≠ "users"

# 2. Check if resource exists
# For databases: Verify table names in schema
# For files: Check file paths are correct

# 3. Confirm permissions
# Ensure your API key can access the resource
```

### Performance Issues
**Problem**: Slow responses or timeouts
```bash
# Solutions:

# 1. Check network connectivity
ping your-supabase-url.supabase.co

# 2. Optimize queries
# Use LIMIT for large datasets
# Add proper indexes in database

# 3. Check server resources
# Monitor CPU/memory usage
htop  # or Activity Monitor on macOS

# 4. Increase timeout settings
# In Inspector settings or server config
```

## 🌐 Browser-Specific Issues

### Chrome/Chromium
```bash
# Common fixes:
# 1. Disable extensions in incognito mode
# 2. Clear site data: Settings > Privacy > Site Settings
# 3. Reset Chrome flags: chrome://flags/#reset-all

# 4. Check for CORS errors in console
# Look for "Access-Control-Allow-Origin" errors
```

### Safari
```bash
# Common fixes:
# 1. Enable Develop menu: Preferences > Advanced
# 2. Disable "Prevent cross-site tracking"
# 3. Clear website data: Develop > Empty Caches

# 4. Check for strict security settings
# Safari > Preferences > Privacy
```

### Firefox
```bash
# Common fixes:
# 1. Disable Enhanced Tracking Protection for localhost
# 2. Clear site data: Settings > Privacy & Security
# 3. Check about:config for strict settings

# 4. Test with fresh profile
firefox -P
```

## 📋 Platform-Specific Issues

### macOS
```bash
# Common issues and fixes:

# 1. Gatekeeper blocking unsigned binaries
sudo spctl --master-disable
# (Re-enable after testing: sudo spctl --master-enable)

# 2. Path issues with Homebrew
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# 3. Permission issues with system folders
# Use ~/Documents instead of /Documents
```

### Windows
```powershell
# Common issues and fixes:

# 1. PowerShell execution policy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# 2. Path separator issues
# Use forward slashes or double backslashes
"C:/Users/YourName/Documents" instead of "C:\Users\YourName\Documents"

# 3. Windows Defender blocking downloads
# Add npm cache folder to exclusions
# %AppData%\npm-cache
```

### Linux
```bash
# Common issues and fixes:

# 1. AppArmor/SELinux blocking network access
sudo aa-status
# Temporarily disable if needed

# 2. Firewall blocking localhost connections
sudo ufw status
sudo ufw allow 5173

# 3. Missing development tools
sudo apt install build-essential
```

## 🆘 Getting More Help

### Diagnostic Information to Collect
When asking for help, include:

```bash
# System information
node --version
npm --version
uname -a  # or systeminfo on Windows

# MCP specific
npm list -g | grep mcp
cat package.json  # if in a project directory

# Error details
# Copy the exact error message
# Include browser console output (F12)
# Share relevant configuration files (remove secrets!)
```

### Where to Get Help

1. **GitHub Issues**: [MCP Repository](https://github.com/modelcontextprotocol/servers/issues)
2. **Community Discord**: [Join the conversation](https://discord.gg/mcp)
3. **Stack Overflow**: Tag your questions with `model-context-protocol`
4. **Documentation**: [Official MCP Docs](https://modelcontextprotocol.io/)

### Before Posting for Help

- [ ] Search existing issues/discussions
- [ ] Try the issue on a different system if possible
- [ ] Prepare a minimal reproducible example
- [ ] Remove any sensitive information from logs/configs

## 🎯 Prevention Tips

### Best Practices
- ✅ **Always test with non-production data first**
- ✅ **Keep backups of working configurations**
- ✅ **Use version control for your configurations**
- ✅ **Document your setup steps**
- ✅ **Update packages regularly but carefully**

### Safety Checklist
- [ ] Never commit API keys to version control
- [ ] Use read-only permissions when learning
- [ ] Test in isolated environments
- [ ] Monitor server logs for unusual activity
- [ ] Keep software updated

---

**Still stuck?** Don't hesitate to ask for help! The MCP community is friendly and always willing to assist newcomers. 🤝

Remember: Every expert was once a beginner who encountered these same issues!
#!/bin/bash

# MCP Tools Setup Script
# This script helps you get started with MCP tools quickly and safely

set -e

echo "🚀 Welcome to MCP Tools Setup!"
echo "This script will help you set up your MCP development environment."
echo ""

# Check prerequisites
echo "📋 Checking prerequisites..."

# Check Node.js
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js 18+ first."
    echo "   Visit: https://nodejs.org"
    exit 1
fi

NODE_VERSION=$(node --version | cut -c 2-)
REQUIRED_VERSION="18.0.0"

if ! node -e "process.exit(process.version.slice(1).split('.').map(Number).reduce((a,b,i)=>a+b*Math.pow(1000,2-i),0) >= '${REQUIRED_VERSION}'.split('.').map(Number).reduce((a,b,i)=>a+b*Math.pow(1000,2-i),0) ? 0 : 1)"; then
    echo "❌ Node.js version $NODE_VERSION is too old. Please upgrade to 18+ first."
    exit 1
fi

echo "✅ Node.js $NODE_VERSION found"

# Check npm
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ npm found"

# Create safe test directory
echo ""
echo "📁 Setting up test workspace..."
TEST_DIR="$HOME/mcp-learning"

if [ ! -d "$TEST_DIR" ]; then
    mkdir -p "$TEST_DIR"
    echo "✅ Created test directory: $TEST_DIR"
else
    echo "✅ Test directory already exists: $TEST_DIR"
fi

# Create example files
cd "$TEST_DIR"
echo "Hello MCP World!" > hello.txt
echo "This is a test document for learning MCP." > test-document.txt
mkdir -p documents examples
echo "# Sample Markdown" > documents/sample.md
echo "Example configuration file" > examples/config.txt

echo "✅ Created example files for testing"

# Install MCP Inspector
echo ""
echo "🔍 Installing MCP Inspector..."
if npm list -g @modelcontextprotocol/inspector &> /dev/null; then
    echo "✅ MCP Inspector already installed"
else
    echo "Installing MCP Inspector globally..."
    npm install -g @modelcontextprotocol/inspector
    echo "✅ MCP Inspector installed"
fi

# Install File System Server
echo ""
echo "📂 Installing File System MCP Server..."
if npm list -g @modelcontextprotocol/server-filesystem &> /dev/null; then
    echo "✅ File System server already installed"
else
    echo "Installing File System MCP Server globally..."
    npm install -g @modelcontextprotocol/server-filesystem
    echo "✅ File System server installed"
fi

# Create basic configuration
echo ""
echo "⚙️ Creating basic configuration..."
cat > mcp-config.json << EOF
{
  "mcpServers": {
    "filesystem": {
      "command": "mcp-server-filesystem",
      "args": ["$TEST_DIR"],
      "env": {
        "FILESYSTEM_ALLOWED_PATHS": "$TEST_DIR"
      }
    }
  }
}
EOF

echo "✅ Created basic configuration file"

# Create environment template
cat > .env.example << EOF
# Copy this file to .env and fill in your actual values
# Never commit the real .env file to version control!

# File System Configuration (already set up)
FILESYSTEM_ALLOWED_PATHS=$TEST_DIR

# Supabase Configuration (for when you're ready)
SUPABASE_URL=https://YOUR_PROJECT_ID.supabase.co
SUPABASE_ANON_KEY=your_anon_key_here

# Other settings
NODE_ENV=development
DEBUG=mcp:*
EOF

echo "✅ Created environment template"

# Success message
echo ""
echo "🎉 Setup complete! Here's what's ready for you:"
echo ""
echo "📍 Test workspace: $TEST_DIR"
echo "📄 Example files created for safe testing"
echo "🔍 MCP Inspector installed and ready"
echo "📂 File System server configured"
echo "⚙️ Basic configuration file created"
echo ""
echo "🚀 Next steps:"
echo "1. cd $TEST_DIR"
echo "2. mcp-inspector    # Start the inspector"
echo "3. Open http://localhost:5173 in your browser"
echo "4. Add the filesystem server using the mcp-config.json"
echo "5. Start exploring!"
echo ""
echo "📚 Need help? Check the documentation in the docs/ folder"
echo "🐛 Issues? See the troubleshooting guide"
echo ""
echo "Happy learning! 🎓"
# MCP Tools Collection

Welcome! This repository contains a collection of Model Context Protocol (MCP) tools. Each tool is completely separate and self-contained in its own folder.

## What is MCP?

MCP (Model Context Protocol) allows AI assistants to securely access external resources and tools. Each tool in this repository adds specific capabilities to your AI assistant.

## Repository Structure

```
mcp/
├── README.md           # This file - main guide
├── supabase-mcp/       # Complete Supabase MCP tool
├── inspector/          # Complete MCP Inspector tool  
└── .gitignore          # Git ignore file
```

## Available Tools

### 🗄️ supabase-mcp/
A complete MCP tool for interacting with Supabase databases. This tool allows your AI assistant to query and manage Supabase projects.

### 🔍 inspector/
A complete MCP tool for inspecting and debugging other MCP tools. This helps you understand what tools are available and how they work.

## github-mcp-server-main
The main server for managing GitHub-related operations within the MCP framework, facilitating interactions with GitHub repositories.

## How to Use These Tools

Each folder contains a complete, independent MCP tool:

1. **Navigate to the tool folder** you want to use (e.g., `cd supabase-mcp/`)
2. **Read that tool's README.md** for specific setup instructions
3. **Follow the setup steps** in that tool's documentation
4. **No shared dependencies** - each tool manages its own requirements

## Adding New Tools

To add a new MCP tool to this collection:

1. **Create a new folder** with a descriptive name (e.g., `my-new-tool/`)
2. **Copy the structure** from an existing tool folder
3. **Update the README.md** files (both this main one and the tool's specific one)
4. **Make it self-contained** - no shared config or dependencies

## Getting Started

If you're new to MCP:
1. Start with the `inspector/` tool to understand how MCP works
2. Then try the `supabase-mcp/` tool if you use Supabase
3. Each tool's README has complete setup instructions

## Need Help?

- Check each tool's individual README.md file
- Each tool is independent, so issues are specific to that tool
- Look for the original source links in each tool's documentation


## aws-mcp
A tool for managing AWS services within the MCP ecosystem, enabling seamless integration and deployment of cloud resources.

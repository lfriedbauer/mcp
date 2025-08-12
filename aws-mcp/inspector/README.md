# MCP Inspector Tool

This is a complete MCP (Model Context Protocol) inspector tool for debugging and exploring other MCP tools. This tool helps you understand what MCP tools are available and how they work.

## What This Tool Does

The MCP Inspector tool provides your AI assistant with the ability to:
- List all available MCP tools and their capabilities
- Inspect tool schemas and available functions
- Test MCP tool connections and responses
- Debug issues with MCP tool implementations
- Explore tool documentation and usage examples

## Setup Instructions

### 1. Install Dependencies
```bash
cd inspector
npm install
```

### 2. Configure the Inspector
1. Copy the example config file:
   ```bash
   cp config/config.example.json config/config.json
   ```

2. Edit `config/config.json` to specify:
   - Which MCP tools to inspect
   - Inspector behavior settings
   - Output format preferences

### 3. Test the Inspector
```bash
npm run inspect
```

### 4. Use with Your AI Assistant
Add this tool to your AI assistant's MCP configuration. This tool is especially useful when:
- Setting up new MCP tools
- Debugging MCP tool issues
- Learning how MCP tools work
- Testing tool integrations

## Files in This Tool

- `README.md` - This file with setup instructions
- `package.json` - Node.js dependencies for this tool only
- `src/` - Source code for the MCP Inspector tool
- `config/` - Configuration files for this tool only

## Configuration

All configuration for this tool is stored in the `config/` directory:
- `config.json` - Main configuration file (create from config.example.json)
- `config.example.json` - Example configuration template

## Usage Examples

### Basic Inspection
```bash
npm run inspect -- --tool-name supabase-mcp
```

### List All Tools
```bash
npm run list-tools
```

### Debug Tool Connection
```bash
npm run debug -- --tool-name your-tool-name
```

## Original Source

This tool is based on the official MCP Inspector implementation. For the latest version and documentation, visit:
[MCP Inspector Official Repository](https://github.com/modelcontextprotocol/inspector)

## Troubleshooting

### Common Issues

1. **Can't find tools**: Check that other MCP tools are properly installed and configured
2. **Connection errors**: Verify MCP tool server addresses and ports
3. **Permission issues**: Ensure the inspector has access to inspect other tools

### Getting Help

- Check the official MCP documentation
- Verify your MCP tool configurations
- Test individual tools before inspecting them
- Review the inspector logs for detailed error information

## Advanced Features

- **Schema validation**: Automatically validate MCP tool schemas
- **Performance testing**: Measure MCP tool response times
- **Integration testing**: Test tool interactions and data flow
- **Documentation generation**: Generate docs from tool inspections

## Security Notes

- The inspector can access information from other MCP tools
- Review inspector output before sharing sensitive information
- Configure access controls for production environments
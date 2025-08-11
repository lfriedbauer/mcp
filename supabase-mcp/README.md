# Supabase MCP Tool

This is a complete MCP (Model Context Protocol) tool for interacting with Supabase databases. This tool allows your AI assistant to query and manage your Supabase projects.

## What This Tool Does

The Supabase MCP tool provides your AI assistant with the ability to:
- Connect to Supabase databases
- Execute SQL queries
- Manage database tables and data
- Access Supabase storage and authentication features

## Setup Instructions

### 1. Install Dependencies
```bash
cd supabase-mcp
npm install
```

### 2. Configure Your Supabase Connection
1. Copy the example config file:
   ```bash
   cp config/config.example.json config/config.json
   ```

2. Edit `config/config.json` with your Supabase details:
   - Your Supabase project URL
   - Your Supabase anon/service role key
   - Database connection settings

### 3. Test the Connection
```bash
npm run test-connection
```

### 4. Use with Your AI Assistant
Add this tool to your AI assistant's MCP configuration. The exact steps depend on your AI assistant, but typically involve:
- Adding the tool path to your MCP config
- Specifying any required environment variables
- Restarting your AI assistant

## Files in This Tool

- `README.md` - This file with setup instructions
- `package.json` - Node.js dependencies for this tool only
- `src/` - Source code for the Supabase MCP tool
- `config/` - Configuration files for this tool only

## Configuration

All configuration for this tool is stored in the `config/` directory:
- `config.json` - Main configuration file (create from config.example.json)
- `config.example.json` - Example configuration template

## Original Source

This tool is based on the official Supabase MCP implementation. For the latest version and documentation, visit:
[Supabase MCP Tool Official Repository](https://github.com/supabase/supabase-mcp)

## Troubleshooting

### Common Issues

1. **Connection fails**: Check your Supabase URL and API key in `config/config.json`
2. **Permission errors**: Ensure your Supabase API key has the necessary permissions
3. **Network issues**: Verify your internet connection and Supabase service status

### Getting Help

- Check the official Supabase MCP documentation
- Verify your Supabase project settings
- Test your connection outside of the AI assistant first

## Security Notes

- Never commit your `config/config.json` file with real credentials
- Use environment variables for production deployments
- Keep your Supabase API keys secure
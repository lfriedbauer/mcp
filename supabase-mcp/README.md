# Supabase MCP Server

The Supabase MCP server provides seamless integration with your Supabase database, allowing you to query, manage, and interact with your data through the Model Context Protocol.

## 🎯 What does this tool do?

This MCP server enables you to:
- **Query your Supabase database** using natural language
- **Browse database schemas** and table structures
- **Execute SQL queries** safely and efficiently
- **Manage database data** with proper permissions
- **Get insights** about your database structure

## ⚠️ Safety First

**Important security considerations:**
- Start with **read-only access** to test safely
- Never expose your **full database credentials** publicly
- Use **environment variables** for sensitive information
- Test with **non-production data** first
- Review all queries before execution

## 🚀 Quick Setup

### Prerequisites
- Node.js 18+ installed
- A Supabase project
- Basic knowledge of environment variables

### Step 1: Install Dependencies
```bash
# Navigate to this folder
cd supabase-mcp

# Install the MCP server (when available)
npm install @modelcontextprotocol/server-supabase
```

### Step 2: Configure Environment
```bash
# Copy the example environment file
cp .env.example .env

# Edit .env with your Supabase credentials
nano .env
```

### Step 3: Set Up Your Environment Variables
Add these to your `.env` file:
```bash
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_SERVICE_KEY=your-service-role-key
SUPABASE_ANON_KEY=your-anon-key
```

### Step 4: Test the Connection
```bash
# Test with read-only access first
npm run test-connection
```

## 📝 Configuration Examples

### Basic Configuration (Read-Only)
Perfect for beginners - safe to explore without making changes:

```json
{
  "mcpServers": {
    "supabase": {
      "command": "npx",
      "args": [
        "@modelcontextprotocol/server-supabase"
      ],
      "env": {
        "SUPABASE_URL": "https://your-project.supabase.co",
        "SUPABASE_ANON_KEY": "your-anon-key"
      }
    }
  }
}
```

### Advanced Configuration (Full Access)
⚠️ Only use this when you're comfortable with the tool:

```json
{
  "mcpServers": {
    "supabase": {
      "command": "npx",
      "args": [
        "@modelcontextprotocol/server-supabase"
      ],
      "env": {
        "SUPABASE_URL": "https://your-project.supabase.co",
        "SUPABASE_SERVICE_KEY": "your-service-role-key"
      }
    }
  }
}
```

## 🧪 Testing Your Setup

### Quick Health Check
```bash
# Verify the server responds
curl -X POST http://localhost:3000/initialize

# Test a simple query
curl -X POST http://localhost:3000/query \
  -H "Content-Type: application/json" \
  -d '{"query": "SELECT version();"}'
```

### Example Queries to Try
Start with these safe, read-only queries:

```sql
-- Check your database version
SELECT version();

-- List all tables (schema info only)
SELECT table_name FROM information_schema.tables 
WHERE table_schema = 'public';

-- Count rows in a table (replace 'your_table' with actual table name)
SELECT COUNT(*) FROM your_table;
```

## 🎓 Learning Progression

### Beginner Level
- [x] Set up read-only access
- [ ] Browse database schema
- [ ] Try simple SELECT queries
- [ ] Understand table relationships

### Intermediate Level
- [ ] Configure full access safely
- [ ] Create custom queries
- [ ] Use complex JOINs
- [ ] Implement proper error handling

### Advanced Level
- [ ] Set up row-level security
- [ ] Create custom functions
- [ ] Implement real-time subscriptions
- [ ] Build complex applications

## 🔧 Common Use Cases

### Data Analysis
```bash
# Analyze user engagement
"Show me the top 10 most active users this month"

# Check data quality
"Find any null values in the email column"
```

### Schema Exploration
```bash
# Understand your database
"What tables do I have and how are they related?"

# Check column types
"What are the column types for the users table?"
```

## 🐛 Troubleshooting

### Connection Issues
```bash
# Check if Supabase is reachable
curl https://your-project.supabase.co/rest/v1/

# Verify your API key format
echo $SUPABASE_ANON_KEY | wc -c  # Should be ~200+ characters
```

### Permission Errors
- Verify your RLS (Row Level Security) policies
- Check your API key has the right permissions
- Ensure your role has access to the tables

### Query Failures
- Start with simple SELECT statements
- Check table and column names are correct
- Review Supabase logs for detailed errors

## 📚 Additional Resources

- [Supabase Documentation](https://supabase.com/docs)
- [Supabase SQL Editor](https://supabase.com/docs/guides/database/sql-editor)
- [Row Level Security](https://supabase.com/docs/guides/auth/row-level-security)
- [Supabase API Reference](https://supabase.com/docs/reference/javascript)

## 🔗 Related Tools

- **[MCP Inspector](../inspector/README.md)** - Debug your Supabase MCP setup
- **[PostgreSQL Tools](../tools/)** - Additional database tools

---

**Need help?** Check our [Troubleshooting Guide](../docs/troubleshooting.md) or open an issue!
# MCP Tools Collection

A comprehensive collection of Model Context Protocol (MCP) servers that enhance AI assistants with powerful tool integrations and AWS service capabilities.

## What is MCP (Model Context Protocol)?

**Model Context Protocol (MCP)** is an open standard that enables secure connections between AI applications and external data sources and tools. Think of it as a bridge that allows your AI assistant to interact with databases, APIs, cloud services, and other external systems in a standardized way.

### How MCP Works

1. **MCP Client**: Your AI assistant (like Claude, Cursor, or Amazon Q CLI)
2. **MCP Server**: Specialized tools that provide specific capabilities
3. **Protocol**: Standardized communication between client and server

```
AI Assistant (Client) ←→ MCP Protocol ←→ MCP Server ←→ External Service
```

### Benefits of MCP

- **Enhanced Capabilities**: Give your AI assistant access to real-time data and services
- **Standardized Integration**: One protocol for connecting to many different tools
- **Security**: Controlled access with proper authentication and permissions
- **Flexibility**: Mix and match different MCP servers based on your needs

## What's in This Repository

This repository contains both **existing MCP tools** developed specifically for this collection and **AWS MCP servers** from the official AWS Labs repository, providing you with:

### 🔧 Core MCP Tools
- **[Supabase MCP](./supabase-mcp/)** - Complete Supabase database integration
- **[Inspector MCP](./inspector/)** - Debug and explore other MCP tools

### ☁️ AWS MCP Servers  
- **[Complete AWS Collection](./aws-mcp/)** - 40+ specialized AWS MCP servers
- **Infrastructure & Deployment** - CDK, Terraform, CloudFormation, EKS, ECS
- **Data & Analytics** - DynamoDB, RDS, DocumentDB, Redshift, Neptune
- **AI & Machine Learning** - Bedrock, Rekognition, Kendra, Nova Canvas
- **Cost & Operations** - Pricing, Cost Explorer, CloudWatch monitoring
- **Developer Tools** - Code analysis, documentation, diagrams

## Quick Start Guide

### Prerequisites

Before getting started, you'll need:

1. **Python 3.10 or newer** - [Download here](https://www.python.org/downloads/)
2. **uv package manager** (recommended) - [Installation guide](https://docs.astral.sh/uv/getting-started/installation/)
3. **MCP-compatible AI assistant** - Such as:
   - [Amazon Q Developer CLI](https://docs.aws.amazon.com/amazonq/latest/qdeveloper-ug/command-line-mcp-config-CLI.html)
   - [Cursor](https://cursor.com/)
   - [Claude Desktop](https://claude.ai/desktop)
   - [Cline](https://marketplace.visualstudio.com/items?itemName=saoudrizwan.claude-dev)

### Step 1: Choose Your Tools

Browse the available tools and choose what you need:

- **New to MCP?** Start with [Inspector MCP](./inspector/) to explore and debug
- **Database work?** Try [Supabase MCP](./supabase-mcp/) for database operations
- **AWS development?** Explore the [AWS MCP collection](./aws-mcp/) 

### Step 2: Install and Configure

Each tool includes detailed installation instructions. Generally:

1. **Install the tool** using uv or pip
2. **Configure credentials** (AWS, database connections, etc.)
3. **Add to your MCP client** configuration file
4. **Start using** with natural language commands

### Step 3: Basic Usage

Once configured, you can interact with tools using natural language:

```
"List all my database tables"
"Create a new S3 bucket for my project"
"Show me the cost breakdown for this month"
"Generate a diagram of my current architecture"
```

## Tools Overview

### 🔧 Core MCP Tools

#### [Supabase MCP](./supabase-mcp/)
Complete integration with Supabase databases for SQL operations, authentication, and storage management.

**Use cases:**
- Database queries and management
- User authentication workflows  
- File storage operations
- Real-time subscriptions

#### [Inspector MCP](./inspector/)
Debug and explore MCP server capabilities, perfect for development and troubleshooting.

**Use cases:**
- Test MCP server connections
- Explore available tools and capabilities
- Debug integration issues
- Learn how MCP servers work

### ☁️ AWS MCP Servers

The [AWS MCP collection](./aws-mcp/) includes 40+ specialized servers organized by category:

#### 🚀 Getting Started with AWS
- **[AWS API MCP Server](./aws-mcp/aws-api/)** - Comprehensive AWS CLI access (start here!)
- **[AWS Knowledge MCP Server](./aws-mcp/aws-knowledge/)** - Latest AWS documentation

#### 🏗️ Infrastructure & Deployment  
- **[AWS CDK MCP Server](./aws-mcp/cdk/)** - Infrastructure as Code with CDK
- **[Terraform MCP Server](./aws-mcp/terraform/)** - Terraform workflows
- **[EKS MCP Server](./aws-mcp/eks/)** - Kubernetes management

#### 📊 Data & Analytics
- **[DynamoDB MCP Server](./aws-mcp/dynamodb/)** - NoSQL database operations
- **[RDS MCP Servers](./aws-mcp/)** - PostgreSQL and MySQL management
- **[Redshift MCP Server](./aws-mcp/redshift/)** - Data warehouse operations

#### 🤖 AI & Machine Learning
- **[Bedrock Knowledge Bases](./aws-mcp/bedrock-kb/)** - Enterprise knowledge retrieval
- **[Nova Canvas MCP Server](./aws-mcp/nova-canvas/)** - AI image generation
- **[Rekognition MCP Server](./aws-mcp/rekognition/)** - Image analysis

#### 💰 Cost & Operations
- **[AWS Pricing MCP Server](./aws-mcp/pricing/)** - Cost estimation
- **[Cost Explorer MCP Server](./aws-mcp/cost-explorer/)** - Cost analysis
- **[CloudWatch MCP Server](./aws-mcp/cloudwatch/)** - Monitoring

[See full AWS collection →](./aws-mcp/)

## Example Configurations

### Amazon Q Developer CLI
Edit `~/.aws/amazonq/mcp.json`:

```json
{
  "mcpServers": {
    "supabase-mcp": {
      "command": "uvx",
      "args": ["supabase-mcp@latest"],
      "env": {
        "SUPABASE_URL": "your-project-url",
        "SUPABASE_KEY": "your-anon-key"
      }
    },
    "awslabs.aws-api-mcp-server": {
      "command": "uvx", 
      "args": ["awslabs.aws-api-mcp-server@latest"],
      "env": {
        "AWS_REGION": "us-east-1"
      }
    }
  }
}
```

### Cursor
Create `.cursor/mcp.json`:

```json
{
  "mcpServers": {
    "inspector": {
      "command": "uvx",
      "args": ["inspector-mcp@latest"]
    },
    "awslabs.cdk-mcp-server": {
      "command": "uvx",
      "args": ["awslabs.cdk-mcp-server@latest"],
      "env": {
        "FASTMCP_LOG_LEVEL": "ERROR"
      }
    }
  }
}
```

## Real-World Use Cases

### Web Application Development
```
"Create a React app with Supabase backend"
"Set up AWS infrastructure with CDK"
"Deploy the app using ECS and load balancer"
"Configure monitoring with CloudWatch"
```

### Data Analysis Project
```
"Query my PostgreSQL database for user analytics"
"Create a DynamoDB table for real-time data"
"Set up a data pipeline with AWS Glue"
"Generate cost reports for the infrastructure"
```

### AI/ML Application
```
"Build a RAG system with Bedrock Knowledge Bases"
"Generate images with Nova Canvas"
"Analyze uploaded documents with Rekognition"
"Create vector embeddings for search"
```

### DevOps & Infrastructure
```
"Show me all running EC2 instances"
"Create a CI/CD pipeline with CodePipeline"
"Set up monitoring and alerts"
"Generate architecture diagrams"
```

## Best Practices

### Security
- **Use least-privilege credentials** for all integrations
- **Enable read-only modes** when exploring or learning
- **Regular credential rotation** for production environments
- **Monitor tool usage** through logging and auditing

### Development
- **Start simple** with basic tools before adding complex integrations
- **Test thoroughly** in development environments first
- **Document configurations** for team collaboration
- **Version control** your MCP configurations

### Performance
- **Use caching** where appropriate to reduce API calls
- **Optimize queries** for database operations
- **Monitor costs** especially for cloud services
- **Set up alerts** for unusual usage patterns

## Getting Help

### Documentation
- Each tool includes comprehensive README files
- Example configurations and use cases
- Troubleshooting guides and common issues

### Community Resources
- [Model Context Protocol Documentation](https://modelcontextprotocol.io/)
- [AWS MCP Servers Repository](https://github.com/awslabs/mcp)
- Tool-specific GitHub repositories for issues and discussions

### Support
- Check individual tool documentation for specific support channels
- Review troubleshooting sections for common issues
- Use Inspector MCP to debug connection and configuration problems

## Contributing

We welcome contributions to improve and expand this MCP tools collection! 

- **Report issues** in the appropriate tool directories
- **Suggest improvements** through GitHub issues
- **Share use cases** and examples with the community
- **Contribute new tools** following the established patterns

## License

This project is licensed under the MIT License - see individual tool directories for specific license information.

---

**Ready to get started?** Choose a tool from the collection above and follow its installation guide. For AWS tools, we recommend starting with the [AWS API MCP Server](./aws-mcp/aws-api/) for general AWS interactions.
# AWS MCP Servers

This directory contains AWS Model Context Protocol (MCP) servers that enhance AI assistants with AWS service capabilities. These servers are based on the official [awslabs/mcp](https://github.com/awslabs/mcp) repository.

## What are AWS MCP Servers?

AWS MCP servers are specialized tools that allow AI assistants to interact with AWS services directly. They provide:

- **Real-time AWS documentation access** - Get the latest API references and service information
- **Infrastructure management** - Deploy and manage AWS resources using Infrastructure as Code
- **Database operations** - Query and manage various AWS database services
- **AI/ML capabilities** - Generate images, analyze data, and retrieve knowledge
- **Cost optimization** - Analyze and estimate AWS costs
- **Developer tools** - Generate diagrams, documentation, and code

## Categories

### 🚀 Getting Started
Essential servers for general AWS interactions:
- [AWS API MCP Server](./aws-api/) - Comprehensive AWS API support
- [AWS Knowledge MCP Server](./aws-knowledge/) - Latest AWS documentation and guidance
- [Core MCP Server](./core/) - Intelligent planning and orchestration

### 🏗️ Infrastructure & Deployment
Build and manage cloud infrastructure:
- [AWS CDK MCP Server](./cdk/) - AWS CDK development with best practices
- [Terraform MCP Server](./terraform/) - Terraform workflows with security scanning
- [CloudFormation MCP Server](./cloudformation/) - Direct resource management
- [EKS MCP Server](./eks/) - Kubernetes cluster management
- [ECS MCP Server](./ecs/) - Container orchestration
- [Serverless MCP Server](./serverless/) - Complete serverless application lifecycle

### 📊 Data & Analytics
Work with databases and data processing:
- [DynamoDB MCP Server](./dynamodb/) - NoSQL database operations
- [Aurora PostgreSQL MCP Server](./postgres/) - PostgreSQL database operations
- [Aurora MySQL MCP Server](./mysql/) - MySQL database operations
- [DocumentDB MCP Server](./documentdb/) - MongoDB-compatible operations
- [Neptune MCP Server](./neptune/) - Graph database queries
- [Redshift MCP Server](./redshift/) - Data warehouse operations

### 🤖 AI & Machine Learning
Enhance AI applications:
- [Bedrock Knowledge Bases MCP Server](./bedrock-kb/) - Enterprise knowledge retrieval
- [Nova Canvas MCP Server](./nova-canvas/) - AI image generation
- [Rekognition MCP Server](./rekognition/) - Image analysis
- [Kendra MCP Server](./kendra/) - Enterprise search

### 💰 Cost & Operations
Monitor and optimize AWS usage:
- [AWS Pricing MCP Server](./pricing/) - Service pricing and estimates
- [Cost Explorer MCP Server](./cost-explorer/) - Detailed cost analysis
- [CloudWatch MCP Server](./cloudwatch/) - Metrics and monitoring

### 🛠️ Developer Tools
Accelerate development:
- [Git Repo Research MCP Server](./git-repo-research/) - Code search and analysis
- [Code Documentation Generator MCP Server](./code-doc-gen/) - Automated documentation
- [AWS Diagram MCP Server](./aws-diagram/) - Architecture diagrams
- [Frontend MCP Server](./frontend/) - React and web development

### 📡 Integration & Messaging
Connect systems and services:
- [SNS/SQS MCP Server](./sns-sqs/) - Messaging and queues
- [Lambda Tool MCP Server](./lambda-tool/) - Execute Lambda functions
- [Step Functions MCP Server](./stepfunctions/) - Workflow management

## Quick Start

1. **Choose your servers**: Browse the categories above to find the servers you need
2. **Install dependencies**: Most servers require Python and AWS credentials
3. **Configure your AI assistant**: Add the servers to your MCP client configuration
4. **Start building**: Use natural language to interact with AWS services

## Installation Requirements

- Python 3.10 or higher
- AWS CLI configured with appropriate credentials
- `uv` package manager (recommended) - [Installation guide](https://docs.astral.sh/uv/getting-started/installation/)

## Next Steps

1. Explore the [Getting Started](#-getting-started) servers first
2. Check individual server documentation for specific setup instructions
3. Review the main repository README for comprehensive installation guides
4. Try the examples in each server's documentation

For detailed installation instructions and examples, see the main repository README.
# AWS API MCP Server

The AWS API MCP Server enables AI assistants to interact with AWS services and resources through AWS CLI commands. This is the most comprehensive AWS MCP server and a great starting point for general AWS interactions.

## What This Tool Does

The AWS API MCP Server provides your AI assistant with the ability to:
- Execute AWS CLI commands safely with validation
- Access all AWS services and features
- Get help with command selection for specific tasks  
- Manage AWS infrastructure programmatically
- Explore AWS resources with read-only mode

## Key Features

- **Comprehensive AWS CLI Support**: Access to all AWS CLI commands and latest features
- **Command Validation**: Prevents invalid or harmful operations
- **Security Controls**: Multiple layers of protection including read-only mode
- **Command Suggestions**: AI-powered help for selecting the right AWS commands
- **Real-time Access**: Works with the latest AWS services, even those released after AI model training

## Installation

### Prerequisites
- AWS account with properly configured credentials
- Python 3.10 or newer
- AWS CLI installed and configured

### Using uv (Recommended)

Add to your MCP client configuration (e.g., `~/.aws/amazonq/mcp.json`):

```json
{
  "mcpServers": {
    "awslabs.aws-api-mcp-server": {
      "command": "uvx",
      "args": ["awslabs.aws-api-mcp-server@latest"],
      "env": {
        "AWS_REGION": "us-east-1"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

### Using pip

1. Install the package:
```bash
pip install awslabs.aws-api-mcp-server
```

2. Add to your MCP configuration:
```json
{
  "mcpServers": {
    "awslabs.aws-api-mcp-server": {
      "command": "python",
      "args": ["-m", "awslabs.aws_api_mcp_server.server"],
      "env": {
        "AWS_REGION": "us-east-1"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

## Configuration Options

| Environment Variable | Required | Default | Description |
|---------------------|----------|---------|-------------|
| `AWS_REGION` | No | `us-east-1` | Default AWS region for CLI commands |
| `AWS_API_MCP_PROFILE_NAME` | No | `default` | AWS profile for credentials |
| `READ_OPERATIONS_ONLY` | No | `false` | Restrict to read-only operations |
| `REQUIRE_MUTATION_CONSENT` | No | `false` | Ask consent before write operations |

## Quick Start Examples

Once configured, you can ask your AI assistant:

- **"List all my EC2 instances"**
- **"Show me S3 buckets in us-west-2"**  
- **"Create a new security group for web servers"** *(requires write permissions)*
- **"What's the pricing for t3.medium instances?"**
- **"Help me set up a VPC with public and private subnets"**

## Security Best Practices

1. **Use IAM Roles**: Configure proper IAM roles with minimal required permissions
2. **Read-Only Mode**: Set `READ_OPERATIONS_ONLY=true` for exploration
3. **Profile Isolation**: Use dedicated AWS profiles for MCP operations
4. **Monitor Usage**: Review AWS CloudTrail logs regularly

## Available Tools

- `call_aws`: Execute AWS CLI commands with validation
- `suggest_aws_commands`: Get AI-powered command suggestions

## Example Usage Scenarios

### Infrastructure Management
```
"Create a Lambda function that processes S3 events"
"Set up an RDS PostgreSQL database with Multi-AZ"
"Configure Auto Scaling for my web application"
```

### Resource Discovery
```
"What resources are running in my account?"
"Show me all security groups with port 22 open"
"List unused EBS volumes to optimize costs"
```

### Cost Optimization
```
"Find resources that could be right-sized"
"Show me my highest cost services this month"
"Identify idle resources for cleanup"
```

## Troubleshooting

### Common Issues

1. **Permission Errors**: Verify AWS credentials and IAM permissions
2. **Region Issues**: Ensure AWS_REGION is set correctly
3. **Command Failures**: Check AWS CLI is installed and updated

### Security Considerations

- This server runs with full AWS CLI access within your IAM permissions
- Always use least-privilege IAM policies
- Be cautious with write operations in production accounts
- Consider using read-only mode for exploration

## Original Source

This tool is based on the official AWS API MCP Server from AWS Labs:
[AWS API MCP Server - Official Repository](https://github.com/awslabs/mcp/tree/main/src/aws-api-mcp-server)

For the latest features and updates, refer to the official repository.
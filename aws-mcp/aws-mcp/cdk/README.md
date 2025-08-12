# AWS CDK MCP Server

The AWS CDK MCP Server provides comprehensive guidance for AWS Cloud Development Kit (CDK) development with security best practices, infrastructure patterns, and compliance automation.

## What This Tool Does

The AWS CDK MCP Server provides your AI assistant with the ability to:
- Get prescriptive guidance for CDK application development
- Find vetted AWS Solutions Constructs patterns
- Discover GenAI CDK constructs for AI/ML workloads
- Generate OpenAPI schemas for Amazon Bedrock Agent action groups
- Access Lambda Powertools and layer documentation
- Validate security compliance with CDK Nag integration
- Explain and fix CDK Nag security rules

## Key Features

- **CDK Best Practices**: Structured guidance for secure, scalable infrastructure
- **AWS Solutions Constructs**: Pre-built patterns for common architectures
- **GenAI Integration**: Specialized constructs for AI/ML applications
- **Security Automation**: CDK Nag integration for compliance checking
- **Bedrock Agent Support**: Generate schemas for Lambda-based action groups
- **Lambda Powertools**: Comprehensive Lambda development guidance

## Installation

### Prerequisites
- Python 3.10 or newer
- AWS CDK CLI: `npm install -g aws-cdk`
- Basic understanding of Infrastructure as Code concepts

### Using uv (Recommended)

Add to your MCP client configuration:

```json
{
  "mcpServers": {
    "awslabs.cdk-mcp-server": {
      "command": "uvx",
      "args": ["awslabs.cdk-mcp-server@latest"],
      "env": {
        "FASTMCP_LOG_LEVEL": "ERROR"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

## Available Tools

| Tool | Description |
|------|-------------|
| `CDKGeneralGuidance` | Get prescriptive advice for building AWS applications with CDK |
| `GetAwsSolutionsConstructPattern` | Find vetted architecture patterns combining AWS services |
| `SearchGenAICDKConstructs` | Discover GenAI CDK constructs by name or features |
| `GenerateBedrockAgentSchema` | Create OpenAPI schemas for Bedrock Agent action groups |
| `LambdaLayerDocumentationProvider` | Access documentation for Lambda layers implementation |
| `ExplainCDKNagRule` | Get detailed guidance on CDK Nag security rules |
| `CheckCDKNagSuppressions` | Validate CDK Nag suppressions in your code |

## Quick Start Examples

### Basic CDK Development
```
"Help me set up a new CDK application for a web API"
"What's the best pattern for a serverless REST API with DynamoDB?"
"Show me how to implement a Lambda function with proper logging"
```

### AI/ML Applications
```
"I need a CDK construct for a RAG application with vector database"
"Help me build a Bedrock Agent with Lambda action groups"
"What GenAI constructs are available for document processing?"
```

### Security and Compliance
```
"Explain this CDK Nag warning about S3 bucket encryption"
"How do I fix CDK Nag errors in my Lambda function?"
"Check my CDK code for security suppressions that need review"
```

## CDK Development Workflow

1. **Initialize**: Start with `cdk init app`
2. **Choose Approach**: 
   - Use AWS Solutions Constructs for common patterns
   - Search GenAI constructs for AI/ML features
   - Build custom resources for specific needs
3. **Implement**: Write CDK code with security best practices
4. **Validate**: Run `cdk synth` and resolve CDK Nag warnings
5. **Deploy**: Use `cdk deploy` to provision resources

## Example Usage Scenarios

### Web Application with Database
```
"Create a CDK stack for a React web app with RDS backend"
"I need a pattern for auto-scaling web servers with load balancer"
"Help me set up CI/CD pipeline for my CDK application"
```

### Data Processing Pipeline
```
"Design a serverless ETL pipeline with Step Functions"
"I need to process CSV files from S3 with Lambda"
"Create a real-time analytics pipeline with Kinesis"
```

### AI/ML Workloads
```
"Build a document processing system with Textract and Comprehend"
"I want to create a chatbot with Bedrock and Lambda"
"Help me set up a vector database for RAG applications"
```

## Security Best Practices

1. **CDK Nag Integration**: Always run CDK Nag to catch security issues
2. **Least Privilege**: Use minimal IAM permissions for resources
3. **Encryption**: Enable encryption at rest and in transit
4. **Network Security**: Implement proper VPC and security group configurations
5. **Monitoring**: Include CloudWatch and CloudTrail in your stacks

## Available Resources

- **CDK Nag Rules**: Access via `cdk-nag://rules/{rule_pack}`
- **AWS Solutions Constructs**: Access via `aws-solutions-constructs://{pattern_name}`
- **GenAI CDK Constructs**: Access via `genai-cdk-constructs://{construct_type}/{construct_name}`
- **Lambda Powertools**: Access via `lambda-powertools://{topic}`

## Common CDK Patterns

### Three-Tier Web Application
```typescript
import * as ec2 from 'aws-cdk-lib/aws-ec2';
import * as rds from 'aws-cdk-lib/aws-rds';
import * as elbv2 from 'aws-cdk-lib/aws-elasticloadbalancingv2';
```

### Serverless API
```typescript
import * as lambda from 'aws-cdk-lib/aws-lambda';
import * as apigateway from 'aws-cdk-lib/aws-apigateway';
import * as dynamodb from 'aws-cdk-lib/aws-dynamodb';
```

### Data Lake
```typescript
import * as s3 from 'aws-cdk-lib/aws-s3';
import * as glue from 'aws-cdk-lib/aws-glue';
import * as athena from 'aws-cdk-lib/aws-athena';
```

## Troubleshooting

### Common Issues

1. **CDK Nag Errors**: Use `ExplainCDKNagRule` to understand and fix security warnings
2. **Construct Not Found**: Search for alternatives using `SearchGenAICDKConstructs`
3. **Schema Generation**: Ensure Lambda uses `BedrockAgentResolver` from Powertools
4. **Deployment Failures**: Check IAM permissions and resource quotas

### Getting Help

- Use CDK General Guidance for architectural questions
- Search Solutions Constructs for proven patterns
- Check CDK Nag suppressions for security compliance
- Access Lambda Powertools documentation for serverless best practices

## Integration with Other Tools

This CDK server works well with:
- **AWS API MCP Server**: For resource management and exploration
- **AWS Documentation MCP Server**: For latest API references
- **AWS Pricing MCP Server**: For cost estimation of CDK resources

## Original Source

This tool is based on the official AWS CDK MCP Server from AWS Labs:
[AWS CDK MCP Server - Official Repository](https://github.com/awslabs/mcp/tree/main/src/cdk-mcp-server)

For the latest features and CDK construct libraries, refer to the official repository.
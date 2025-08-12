# AWS Pricing MCP Server

The AWS Pricing MCP Server provides real-time access to AWS service pricing information, helping you estimate costs and make informed decisions about your AWS infrastructure.

## What This Tool Does

The AWS Pricing MCP Server provides your AI assistant with the ability to:
- Get current pricing for any AWS service
- Compare costs across different regions
- Estimate monthly costs for infrastructure
- Find the most cost-effective instance types
- Understand pricing models (On-Demand, Reserved, Spot)
- Get pricing for storage, data transfer, and other resources

## Key Features

- **Real-Time Pricing**: Access to current AWS pricing data
- **Multi-Region Support**: Compare pricing across different AWS regions
- **Service Coverage**: Pricing for all AWS services and resources
- **Cost Estimation**: Calculate projected monthly costs
- **Pricing Models**: Support for different pricing options
- **Currency Support**: Pricing in multiple currencies

## Installation

### Prerequisites
- Python 3.10 or newer
- AWS credentials (optional, for some features)

### Using uv (Recommended)

Add to your MCP client configuration:

```json
{
  "mcpServers": {
    "awslabs.aws-pricing-mcp-server": {
      "command": "uvx",
      "args": ["awslabs.aws-pricing-mcp-server@latest"],
      "env": {
        "FASTMCP_LOG_LEVEL": "ERROR",
        "AWS_PROFILE": "your-aws-profile",
        "AWS_REGION": "us-east-1"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

## Quick Start Examples

### Instance Pricing
```
"What's the hourly cost of a t3.medium EC2 instance in us-east-1?"
"Compare pricing for c5.large vs c6i.large instances"
"Show me the cheapest GPU instance for machine learning"
```

### Storage Costs
```
"How much does 100GB of S3 storage cost per month?"
"What's the difference between S3 Standard and S3 IA pricing?"
"Calculate the cost of 1TB EBS gp3 storage"
```

### Database Pricing
```
"Estimate monthly cost for a db.t3.micro RDS instance"
"Compare DynamoDB on-demand vs provisioned pricing"
"What does Aurora Serverless cost for a small application?"
```

### Regional Comparisons
```
"Compare EC2 pricing between us-east-1 and eu-west-1"
"What regions have the lowest Lambda pricing?"
"Show me data transfer costs between regions"
```

### Cost Estimation
```
"Estimate the monthly cost for a 3-tier web application"
"What would a basic ML training workload cost on AWS?"
"Calculate costs for a high-availability database setup"
```

## Common Use Cases

### Architecture Planning
- Estimate costs before building infrastructure
- Compare different architectural approaches
- Find cost-optimal instance types and storage options

### Budget Planning
- Project monthly and annual AWS costs
- Plan for scaling and growth scenarios
- Identify cost optimization opportunities

### Procurement Support
- Get accurate pricing for budget requests
- Compare Reserved Instance vs On-Demand costs
- Calculate ROI for different AWS services

### Multi-Region Strategy
- Compare costs across regions for compliance/latency needs
- Optimize for cost vs performance trade-offs
- Plan disaster recovery budgets

## Pricing Models Explained

### EC2 Pricing
- **On-Demand**: Pay by the hour/second, no commitment
- **Reserved Instances**: 1-3 year commitments for discounts
- **Spot Instances**: Bid on spare capacity for up to 90% savings
- **Dedicated Hosts**: Physical servers for compliance needs

### Storage Pricing
- **S3 Storage Classes**: Standard, IA, Glacier for different access patterns
- **EBS Volume Types**: gp3, io2, st1 for different performance needs
- **Data Transfer**: Costs for moving data in/out of AWS

### Database Pricing
- **RDS**: Instance hours + storage + backup + data transfer
- **DynamoDB**: On-demand per request or provisioned capacity
- **Aurora**: Serverless auto-scaling or provisioned instances

## Cost Optimization Tips

### Right-Sizing
```
"What's the most cost-effective instance type for a web server?"
"Should I use gp3 or gp2 EBS volumes for better cost/performance?"
"Compare Aurora vs RDS for my database workload"
```

### Reserved Capacity
```
"How much can I save with Reserved Instances for my workload?"
"What's the break-even point for RDS Reserved Instances?"
"Compare 1-year vs 3-year Reserved Instance savings"
```

### Storage Optimization
```
"When should I use S3 Intelligent Tiering?"
"What's the cost difference between S3 Standard and Glacier?"
"How much can I save by archiving old data?"
```

## Integration Examples

### With CDK/Terraform
```
"Estimate costs for this CDK stack before deployment"
"What's the monthly cost of this Terraform infrastructure?"
"Compare costs between different instance types in my template"
```

### With Architecture Design
```
"What would this 3-tier architecture cost per month?"
"Compare serverless vs container costs for this application"
"Estimate costs for high availability setup"
```

### With Monitoring
```
"Set up cost alerts for when spending exceeds $100/month"
"Create a budget for my development environment"
"Track spending trends for my production workloads"
```

## Advanced Features

### Bulk Calculations
- Calculate costs for multiple resources at once
- Compare pricing across multiple regions
- Estimate costs for different scaling scenarios

### Historical Trends
- Understanding pricing changes over time
- Planning for future cost optimization
- Identifying seasonal pricing patterns

### Custom Scenarios
- Model complex infrastructure requirements
- Include data transfer and bandwidth costs
- Factor in operational overhead and management

## Troubleshooting

### Common Issues
1. **Pricing Data Updates**: Pricing data may have slight delays
2. **Regional Availability**: Some services not available in all regions
3. **Currency Conversion**: Exchange rates may affect non-USD pricing

### Best Practices
1. **Regular Updates**: Check pricing regularly as AWS updates frequently
2. **Total Cost of Ownership**: Include data transfer, storage, and operational costs
3. **Reserved Instance Planning**: Model long-term usage patterns
4. **Cost Monitoring**: Set up alerts and budgets for actual spending

## Security Considerations

- This server only accesses public pricing information
- No sensitive data or account information is accessed
- AWS credentials are optional and only for enhanced features

## Original Source

This tool is based on the official AWS Pricing MCP Server from AWS Labs:
[AWS Pricing MCP Server - Official Repository](https://github.com/awslabs/mcp/tree/main/src/aws-pricing-mcp-server)

For the latest pricing information and features, refer to the official repository.
# Amazon DynamoDB MCP Server

The Amazon DynamoDB MCP Server provides comprehensive tools for managing DynamoDB tables, items, and operations, along with expert data modeling guidance.

## What This Tool Does

The DynamoDB MCP Server provides your AI assistant with the ability to:
- Design and model DynamoDB tables with best practices
- Create, update, and delete DynamoDB tables
- Perform CRUD operations on items (Create, Read, Update, Delete)
- Query and scan tables efficiently
- Manage backups and point-in-time recovery
- Configure Time to Live (TTL) for automatic item expiration
- Handle secondary indexes and table configurations
- Get expert guidance on DynamoDB data modeling

## Key Features

- **30+ Operational Tools**: Complete DynamoDB management capabilities
- **Data Modeling Expert**: Built-in guidance for optimal table design
- **Backup & Recovery**: Full backup and restore functionality
- **Performance Optimization**: Query and scan optimization guidance
- **Security**: Tag management and resource policies
- **Monitoring**: Table limits and endpoint information

## Installation

### Prerequisites
- AWS account with DynamoDB permissions
- Python 3.10 or newer
- AWS credentials configured

### Using uv (Recommended)

Add to your MCP client configuration:

```json
{
  "mcpServers": {
    "awslabs.dynamodb-mcp-server": {
      "command": "uvx",
      "args": ["awslabs.dynamodb-mcp-server@latest"],
      "env": {
        "DDB-MCP-READONLY": "true",
        "AWS_PROFILE": "default",
        "AWS_REGION": "us-west-2",
        "FASTMCP_LOG_LEVEL": "ERROR"
      },
      "disabled": false,
      "autoApprove": []
    }
  }
}
```

## Configuration Options

| Environment Variable | Default | Description |
|---------------------|---------|-------------|
| `DDB-MCP-READONLY` | `false` | Set to `true` to restrict to read-only operations |
| `AWS_PROFILE` | `default` | AWS profile for credentials |
| `AWS_REGION` | `us-west-2` | AWS region for DynamoDB operations |
| `FASTMCP_LOG_LEVEL` | `INFO` | Logging level for the server |

## Available Tools

### Design & Modeling
| Tool | Description |
|------|-------------|
| `dynamodb_data_modeling` | Get expert guidance on DynamoDB data modeling |

### Table Management
| Tool | Description |
|------|-------------|
| `create_table` | Create new DynamoDB table with indexes |
| `delete_table` | Delete table and all items |
| `describe_table` | Get table information and status |
| `list_tables` | List all tables in account |
| `update_table` | Modify table settings and configuration |

### Item Operations
| Tool | Description |
|------|-------------|
| `get_item` | Retrieve item by primary key |
| `put_item` | Create or replace item |
| `update_item` | Edit item attributes |
| `delete_item` | Remove item by primary key |

### Querying & Scanning
| Tool | Description |
|------|-------------|
| `query` | Find items by partition key with optional filtering |
| `scan` | Scan entire table or index |

### Backup & Recovery
| Tool | Description |
|------|-------------|
| `create_backup` | Create table backup |
| `describe_backup` | Get backup details |
| `list_backups` | List all backups |
| `restore_table_from_backup` | Restore table from backup |
| `describe_continuous_backups` | Check point-in-time recovery status |
| `update_continuous_backups` | Enable/disable point-in-time recovery |

## Quick Start Examples

### Table Design and Creation
```
"Help me design a DynamoDB table for an e-commerce application"
"Create a table for storing user profiles with email as the partition key"
"I need a table that can handle high-traffic gaming leaderboards"
```

### Data Operations
```
"Add a new user to the users table"
"Find all orders for customer ID 12345"
"Update the status of order ORD-789 to 'shipped'"
"Delete old session data older than 30 days"
```

### Performance & Optimization
```
"How can I optimize queries for my product catalog table?"
"Show me the most efficient way to paginate through large result sets"
"Help me design a GSI for querying by date range"
```

### Backup & Management
```
"Create a backup of my critical customer data table"
"Enable point-in-time recovery for all my tables"
"Set up TTL to automatically delete expired sessions"
```

## Data Modeling Best Practices

### Single Table Design
DynamoDB works best with a single table design pattern:
- Use composite primary keys (partition + sort key)
- Leverage GSIs for different access patterns
- Use sparse indexes for optional attributes
- Design around your query patterns, not entities

### Access Patterns
Always start with your access patterns:
1. **Identify all queries** your application needs
2. **Design primary key** to support the most frequent pattern
3. **Add GSIs** for secondary access patterns
4. **Use sort key** for range queries and sorting

### Performance Optimization
- **Hot partitions**: Distribute load evenly across partitions
- **Batch operations**: Use batch_get_item and batch_write_item
- **Query vs Scan**: Always prefer query over scan
- **Projection**: Only project attributes you need in GSIs

## Example Use Cases

### E-commerce Application
```
Partition Key: USER_ID
Sort Key: ORDER_ID#ITEM_ID
GSI: STATUS-TIMESTAMP-INDEX (for order history)
```

### Gaming Leaderboard
```
Partition Key: GAME_ID  
Sort Key: SCORE#USER_ID
GSI: USER_ID-TIMESTAMP-INDEX (for user history)
```

### IoT Sensor Data
```
Partition Key: DEVICE_ID
Sort Key: TIMESTAMP
TTL: EXPIRY_TIME (for data retention)
```

## Security Considerations

1. **Read-Only Mode**: Set `DDB-MCP-READONLY=true` for safe exploration
2. **IAM Permissions**: Use least-privilege access policies
3. **Data Encryption**: Enable encryption at rest and in transit
4. **VPC Endpoints**: Use VPC endpoints for private network access
5. **Resource Policies**: Implement fine-grained access control

## Troubleshooting

### Common Issues

1. **Permission Errors**: Verify IAM permissions for DynamoDB operations
2. **Throttling**: Check provisioned capacity or enable auto-scaling
3. **Hot Partitions**: Review partition key design for even distribution
4. **Query Limitations**: Ensure proper partition key in query operations

### Performance Issues

1. **Slow Queries**: Use query instead of scan when possible
2. **High Costs**: Optimize projection and use on-demand billing
3. **Capacity Errors**: Enable auto-scaling or increase provisioned capacity

## Integration with Other Tools

Works well with:
- **AWS API MCP Server**: For broader AWS resource management
- **AWS Pricing MCP Server**: For cost estimation
- **CDK MCP Server**: For infrastructure as code

## Original Source

This tool is based on the official Amazon DynamoDB MCP Server from AWS Labs:
[DynamoDB MCP Server - Official Repository](https://github.com/awslabs/mcp/tree/main/src/dynamodb-mcp-server)

For the latest features and DynamoDB best practices, refer to the official repository.
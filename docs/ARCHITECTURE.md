# Architecture Overview

## Project Structure
- **Mortgages**: Real-time pipeline (10K events/day)
- **Employee Analytics**: Batch pipeline (daily extraction)

## Infrastructure
- Azure Resource Groups (DEV, UAT, PROD)
- Databricks Workspaces (3x)
- Storage Accounts (Data Lake Gen2)
- Event Hubs (Real-time streaming)
- Data Factory (Orchestration)
- Key Vault (Secrets)
- Monitoring (App Insights + Log Analytics)

## Data Flow

```
Event Sources → Ingestion → Processing → Storage → Analytics
```

```
See DEVELOPMENT.md for implementation details.
```
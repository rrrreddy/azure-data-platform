# Architecture Overview

## System Design

### High-Level Architecture

Data Sources
↓
Azure Databricks
├─ Streaming Pipeline (Mortgages)
├─ Batch Pipeline (Employees)
└─ Delta Lake
↓
Analytics & BI
├─ Power BI
├─ Dashboards
└─ Reports


### Projects

#### Project 1: Mortgages Real-Time Analytics
- Event Hubs → Streaming → ML Scoring → Delta → Power BI
- Volume: 10K events/day
- Latency: <500ms

#### Project 2: Employee Performance Analytics
- Multi-source extraction → Batch processing → Reports
- Daily execution
- 5K+ employees

## Infrastructure

Three environments:
- **DEV:** Experimental
- **UAT:** Testing
- **PROD:** Production (99.9% SLA)

All managed via Terraform
#!/bin/bash
set -e

echo "Creating project directory structure..."

# Infrastructure
mkdir -p infrastructure/terraform/modules/resource_group
mkdir -p infrastructure/terraform/modules/storage_account
mkdir -p infrastructure/terraform/modules/key_vault
mkdir -p infrastructure/terraform/modules/databricks
mkdir -p infrastructure/terraform/modules/event_hub
mkdir -p infrastructure/terraform/modules/data_factory
mkdir -p infrastructure/terraform/modules/monitoring
mkdir -p infrastructure/terraform/environments
mkdir -p infrastructure/scripts
mkdir -p infrastructure/arm-templates

# Mortgages Project
mkdir -p projects/mortgages-realtime/{src/notebooks,src/python,src/sql/{ddl,queries}}
mkdir -p projects/mortgages-realtime/{tests/{unit,integration,performance},config}
mkdir -p projects/mortgages-realtime/{data_factory/{pipelines,linked_services}}
mkdir -p projects/mortgages-realtime/{monitoring/{dashboards,alerts}}

# Employee Analytics Project
mkdir -p projects/employee-performance-batch/{src/notebooks,src/python,src/sql/{ddl,queries}}
mkdir -p projects/employee-performance-batch/{tests/{unit,integration,performance},config}
mkdir -p projects/employee-performance-batch/{data_factory/{pipelines,linked_services}}
mkdir -p projects/employee-performance-batch/{monitoring/{dashboards,alerts}}

# CI/CD & Docs
mkdir -p .github/workflows
mkdir -p ci-cd/{scripts,templates}
mkdir -p docker
mkdir -p docs
mkdir -p vault

echo "✅ Directory structure created!"

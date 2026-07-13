# Development Guide

## Setup

1. Clone repository
2. Create virtual environment: `python -m venv venv`
3. Activate: `venv\Scripts\activate`
4. Install: `pip install -r requirements.txt`

## Running Tests

```bash
make test              # All tests
make test-unit         # Unit only
make test-int          # Integration only
```

## Code Quality 

```bash
make lint              # Check
make format            # Auto-format
make type-check        # Type check
```

## Git Workflow

1. Feature branch: `git checkout -b feature/xyz`
2. Make changes
3. Push: `git push origin feature/xyz`
4. Create PR
5. Merge after approval
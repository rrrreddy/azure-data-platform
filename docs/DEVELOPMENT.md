# Development Guide

## Local Setup
```bash
git clone ...
cd azure-data-platform
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Running Tests
```bash
pytest tests/ -v --cov=projects
```

## Git Workflow
1. Create feature branch: `git checkout -b feature/xyz`
2. Make changes
3. Push: `git push origin feature/xyz`
4. Create PR on GitHub
5. After approval, merge to develop
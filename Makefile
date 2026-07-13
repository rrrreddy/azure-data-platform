.PHONY: help setup clean test

help:
	@echo "Available commands:"
	@echo "  make setup    - Setup development environment"
	@echo "  make test     - Run tests"
	@echo "  make clean    - Clean cache"

setup:
	python -m venv venv
	. venv/bin/activate && pip install -r requirements.txt

test:
	pytest tests/ --cov=projects

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	rm -rf .pytest_cache htmlcov .coverage
.PHONY: help setup clean test lint format install-dev

help:
	@echo "Azure Data Platform - Available Commands"
	@echo ""
	@echo "Setup & Installation:"
	@echo "  make setup          - Create virtual environment and install dependencies"
	@echo "  make install-dev    - Install development dependencies"
	@echo ""
	@echo "Code Quality:"
	@echo "  make lint           - Run pylint and flake8"
	@echo "  make format         - Format code with black and isort"
	@echo "  make type-check     - Run mypy type checking"
	@echo ""
	@echo "Testing:"
	@echo "  make test           - Run all tests with coverage"
	@echo "  make test-unit      - Run unit tests only"
	@echo "  make test-int       - Run integration tests only"
	@echo ""
	@echo "Cleanup:"
	@echo "  make clean          - Remove cache and build artifacts"

setup:
	python3 -m venv venv
	. venv/bin/activate && pip install --upgrade pip
	. venv/bin/activate && pip install -r requirements.txt

install-dev:
	pip install -r requirements.txt

lint:
	pylint projects/ --disable=all --enable=E,F
	flake8 projects/ --count --select=E9,F63,F7,F82 --show-source --statistics

format:
	black projects/ --line-length=100
	isort projects/ --profile=black

type-check:
	mypy projects/ --ignore-missing-imports

test:
	pytest tests/ --cov=projects --cov-report=html --cov-report=term-missing

test-unit:
	pytest projects/*/tests/unit --verbose

test-int:
	pytest projects/*/tests/integration --verbose

clean:
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	rm -rf .pytest_cache .coverage .mypy_cache htmlcov/
	rm -rf build/ dist/ *.egg-info/

.DEFAULT_GOAL := help
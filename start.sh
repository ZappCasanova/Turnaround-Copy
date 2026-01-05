#!/bin/bash
# Install dependencies
pip install -r requirements.txt

# Install Playwright browsers
playwright install chromium

# Install system dependencies for Playwright
playwright install-deps

# Start the application
gunicorn --config gunicorn_config.py main:app

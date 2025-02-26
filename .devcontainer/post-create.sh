#!/bin/bash

# Install dependencies (adjust as needed for your chosen image)
sudo apt-get update
sudo apt-get install -y python3 python3-pip build-essential libssl-dev libffi-dev

# Install Frappe Bench
pip3 install frappe-bench

# Initialize a new Frappe bench
bench init frappe-bench --frappe-branch version-14 # Or your desired version
cd frappe-bench

# Install ERPNext (adjust version as needed)
bench get-app erpnext --branch version-14 # Or your desired version

# Create a new site
bench new-site your-site-name.local

# Install ERPNext on the site
bench install-app erpnext

# Start the bench
bench start
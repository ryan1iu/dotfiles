#!/bin/bash

SERVICE_NAME="v2raya"

# Check if the service is running
if systemctl is-active --quiet $SERVICE_NAME; then
    sudo systemctl stop $SERVICE_NAME
else
    sudo systemctl start $SERVICE_NAME
fi

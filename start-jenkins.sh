#!/bin/bash

# Check if Jenkins service is running
if ! systemctl is-active jenkins; then
    # Start the Jenkins service
    sudo systemctl start jenkins

    # Wait for Jenkins to start
    until curl -s http://localhost:8080/ >/dev/null 2>&1; do
        echo "Waiting for Jenkins to start..."
        sleep 5
    done

    echo "Jenkins started successfully!"
else
    echo "Jenkins is already running."
fi

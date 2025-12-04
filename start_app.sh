#!/bin/bash
# Stop any previous instance
pkill -f SampleApp.dll || true

# Run app in background and log output
nohup dotnet /home/azureuser/sample-dotnet/SampleApp.dll --urls "http://0.0.0.0:5000" > /home/azureuser/sample-dotnet/app.log 2>&1 &

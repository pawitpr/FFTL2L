#!/bin/bash

# Check that a server address, port number, and file name were provided as arguments
if [ $# -ne 3 ]; then
    echo "Usage: $0 <server-address> <port> <file-name>"
    exit 1
fi

# Check that the specified file exists and is a regular file
if [ ! -f "$3" ]; then
    echo "Error: $3 is not a regular file."
    echo "Please select the valid File 🗃️
    exit 1
fi

# Connect to the server and send the file
cat "$3" | nc "$1" "$2"
echo "File sent successfully."


#!/bin/bash

# Check that a port number was provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <port>"
    exit 1
fi
# #
# Create a named pipe for the server to read from
PIPE=$(mktemp -u)
mkfifo "$PIPE"

# Start listening on the specified port for incoming connections
nc -l "$1" < "$PIPE" | tar -xvC . &>/dev/null &

echo "Waiting for a connection on port $1..."

# Wait for data to be received on the named pipe and write it to a file
while true; do
    cat "$PIPE" | tar -xvC . &>/dev/null
    echo "File received successfully."
done

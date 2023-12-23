#!/bin/bash

# This is an example script. We just echo something, sleep for 10s, echo again and sleep 
# for 10s.
# Run this script in background by adding '&' after the script.
# Check the process info using `ps` command with process id. The shell (/bin/bash) should be 
# executed with the path to script as argument.
# Check the child process created by the process, it should spawn sleep.
# Also check the process tree

echo "This is first echo"
sleep 10
echo "This is second echo"
sleep 10

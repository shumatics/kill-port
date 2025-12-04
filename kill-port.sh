#!/bin/zsh

while getopts p: flag
do
    case "${flag}" in
        p) port=${OPTARG};;
    esac
done

echo "You entered: $port\n"

if [[ -z "$port" ]]; then 
    echo "Port number is empty. Use the -p flag"; 
    exit;
fi

command=$(lsof -i :"$port" -sTCP:LISTEN)
echo "$command\n"

if [[ -z "$command" ]]; then 
    echo "No Processes to kill"; 
    exit;
fi

echo "Which PID to kill"
read -r pid

echo "PID: $pid\n"

if sudo kill -9 "$pid"; then
    echo "Process $pid has been killed\n"
else
    echo "Cannot kill process $pid\n"
fi
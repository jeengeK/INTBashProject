 Greeting message
echo "Hello $USER"

# Check permissions of .token file
token_file="$HOME/.token"
if [ -f "$token_file" ]; then
    permissions=$(stat -c "%a" "$token_file")
    if [ "$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
else
    echo "Warning: .token file does not exist"
fi

export PATH="$PATH:/home/john/usercommands"


# Print current date in ISO 8601 format
echo "The current date is: $(date -u +"%Y-%m-%dT%H:%M:%S%z")"

# Define alias ltxt to list .txt files
alias ltxt='ls *.txt'

# Define environment variable COURSE_ID
export COURSE_ID="DevOpsTheHardWay"

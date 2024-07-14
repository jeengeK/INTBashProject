# Greeting message
echo "Hello \$USER"

# Check if .token file exists and its permissions
if [ -f "\$HOME/.token" ]; then
    permissions=\$(stat -c "%a" "\$HOME/.token")
    if [ "\$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
else
    echo "Warning: .token file does not exist"
fi

# Print current date in ISO 8601 format
echo "The current date is: \$(date -u +"%Y-%m-%dT%H:%M:%S%z")"

# Define environment variable COURSE_ID
export COURSE_ID="DevOpsTheHardWay"

# Define alias ltxt to list .txt files
alias ltxt='ls *.txt'

# Check and create/clean ~/tmp directory
if [ -d "\$HOME/tmp" ]; then
    rm -rf "\$HOME/tmp"/*
else
    mkdir "\$HOME/tmp"
fi

# Add /home/john/usercommands to the end of PATH
export PATH="\$PATH:/home/john/usercommands"

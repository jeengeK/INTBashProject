# Greet the user
echo "Hello \$USER"

# Define environment variable COURSE_ID
export COURSE_ID="DevOpsTheHardWay"

# Check permissions of .token file if it exists
if [ -f "\$HOME/.token" ]; then
    permissions=\$(stat -c "%a" "\$HOME/.token")
    if [ "\$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

# Change umask to 007
umask 007

# Add /home/<username>/usercommands to the end of PATH
export PATH="\$PATH:/home/\$USER/usercommands"

# Print current date in ISO 8601 format
echo "The current date is: \$(date -u +"%Y-%m-%dT%H:%M:%S%z")"

# Define alias ltxt for listing .txt files
alias ltxt='ls *.txt'

# Create or clean ~/tmp directory
if [ -d "\$HOME/tmp" ]; then
    rm -rf "\$HOME/tmp"/*
else
    mkdir "\$HOME/tmp"
fi

# Kill process bound to port 8080 if it exists (placeholder)
# Replace with actual command once port management is covered
# For example:
# fuser -k 8080/tcp


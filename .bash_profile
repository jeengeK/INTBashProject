# Greeting message
echo "Hello $USER"

export COURSE_ID="__REPO_NAME__"


# Check if .token file exists and its permissions
if [ -f "$HOME/.token" ]; then
    permissions=$(stat -c "%a" "$HOME/.token")
    if [ "$permissions" != "600" ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

umask 006
export PATH="$PATH:/home/john/usercommands"
date -u +"%Y-%m-%dT%H:%M:%S%:z"

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
export PATH="/home/$USER/usercommands:$PATH"
date -u +"%Y-%m-%dT%H:%M:%S%:z"

#If it doesnt exist, create the ~/tmp directory on the user's home dir. If it exists, clean it
TMP_DIR=~/tmp
if [ -d "$TMP_DIR" ]; then
    echo "Cleaning $TMP_DIR directory..."
    rm -rf "${TMP_DIR:?}/"*
else
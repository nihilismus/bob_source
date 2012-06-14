#!/usr/bin/env bash

set -e
set -f

me=$(basename $0)

userid=$(/usr/bin/id --user)
if [ "$userid" -ne 0 ]; then
    echo "$me: Error, you are not root"
    exit 1
fi

if [ -z "$1" ]; then
    echo "$me: Error, no argument"
    exit 1
fi

# Get the server-mirror to use from slackpkg configuration
server=$(/usr/bin/grep -v '^#' /etc/slackpkg/mirrors | xargs)

# Prepare our working directory
mkdir -p /usr/ports/local
cd /usr/ports/local
mkdir -p $1
cd /usr/ports/local/$1

/usr/bin/lftp -c "open $server/$1 ; mirror ."

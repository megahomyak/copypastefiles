#!/usr/bin/bash

sshpass -p <password> ssh <user>@<ip> << EOF
    cd <dir>
    GIT_SSH_COMMAND='ssh -i <deploy key path> -o IdentitiesOnly=yes' git pull
    poetry install --no-root --sync
    systemctl restart <service name>
EOF

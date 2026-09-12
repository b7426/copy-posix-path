#!/bin/bash
WORKFLOW_PATH="$HOME/Library/Services/Copy POSIX Path.workflow"
if [ -d "$WORKFLOW_PATH" ]; then
    rm -rf "$WORKFLOW_PATH"
    /System/Library/CoreServices/pbs -update 2>/dev/null || true
    echo "Uninstalled."
else
    echo "Not installed."
fi

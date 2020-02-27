#!/bin/bash

PIPE=events

mkfifo $PIPE
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
tail -F $PIPE | $DIR/client

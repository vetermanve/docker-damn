#!/usr/bin/env bash

# trap ctrl-c and call ctrl_c()
for sig in SIGINT SIGTERM SIGHUP SIGQUIT EXIT; do
    trap ctrl_c ${sig}
  done

function ctrl_c() {
    echo "Bye-bye lovely!"
    exit 0;
}

echo "Tap CTRL-C to Damn exit"

while true
do
    echo "Damn! It's already "$(date +'%T of %F');
    sleep 3;
done;
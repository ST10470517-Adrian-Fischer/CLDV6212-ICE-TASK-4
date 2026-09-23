#!/bin/bash
websites=(
    "https://www.google.com"
    "https://www.github.com"
)

for site in "${websites[@]}"; do
    if curl -s --head --max-time 5 "$site" > /dev/null; then
        echo "$site is reachable"
    else
        echo "$site is NOT reachable"
    fi
done

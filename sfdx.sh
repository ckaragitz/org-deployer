#!/bin/bash

# Declare variables
email=$1
username=$2

# JWT auth flow
sfdx force:auth:jwt:grant --clientid YOUR CONNECTED APP CLIENT ID HERE \
--jwtkeyfile ./JWT/server.key --username YOUR SALESFORCE DEV HUB USERNAME \
--setdefaultdevhubusername --setalias DevHub

# Create Scratch Org dynamically and open it
sfdx force:org:create adminEmail=$email edition=Developer username=$username
sfdx force:org:open -u $username --path lightning

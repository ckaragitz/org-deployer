#!/bin/bash

# Declare variables
email=$1
username=$2

# JWT auth flow
sfdx force:auth:jwt:grant --clientid 3MVG9ZF4bs_.MKujtQm6XdiIXwJuqbu5tOrrnQwFZJhCyJi1ZsGeeTwUGJzgjqkEocGbNRHTkS8m7TOmks_f3 \
--jwtkeyfile /Users/ckaragitz/Documents/Code/OrgDeployer/server/JWT/server.key --username ckaragitz@salesforce.dev \
--setdefaultdevhubusername --setalias DevHub

# Create Scratch Org dynamically and open it
sfdx force:org:create adminEmail=$email edition=Developer username=$username
sfdx force:org:open -u $username --path lightning
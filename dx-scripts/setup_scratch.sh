#!/bin/bash
# use this command to create a scratch
# org based on the current branch

# Exit script if a statement returns a non-true return value.
set -o errexit
# Use the error status of the first failure, rather than that of the last item in a pipeline.
set -o pipefail

#This script should not need to be changed
#please add custom config to customize_scratch_org.sh

if [ $# -lt 1 ]
then
    echo Usage: setup_scratch_org.sh alias
    exit
fi

# override version if needed
# sfdx config:set apiVersion=54.0

#create a scratch org for this branch
sfdx force:org:create --durationdays 30 -s -f config/project-scratch-def.json -a $1 --wait 15;


#set the default scratch org name
sfdx force:config:set defaultusername=$1


## push local code artifacts to scratch org
sfdx force:source:push

## assign any required permission sets
sfdx force:user:permset:assign -n proesis

## run any anymous apex scripts to setup data, batches, etc...
sfdx force:apex:execute -f dx-scripts/apex/anonymous_apex.cls


if [ $# -eq 1 ]
then
    # open new scratch org in browser to default page
    sfdx force:org:open 
    # open new scratch org in browser to default page
    # unless there is an additional arg indicating this is in CI
    exit
fi
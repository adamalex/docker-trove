#!/bin/bash

# Uses docker-trove -- packaged by Adam Alexander
# https://github.com/adamalex/docker-trove

# Documentation for config variables available at
# http://docs.rackspace.com/cdb/api/v1.0/cdb-getting-started/content/Install_Trove_Client.html 

# Documentation for command usage available on CLI
# $ ./trove.sh help

OS_AUTH_URL=https://identity.api.rackspacecloud.com/v2.0/
OS_PASSWORD=xxxxxxxx
OS_PROJECT_ID=123456
OS_REGION_NAME=ORD
OS_TENANT_ID=123456
OS_USERNAME=xxxxxxxx
TROVE_SERVICE_TYPE=rax:database

docker run -i -t --rm \
  -e "OS_AUTH_URL=$OS_AUTH_URL" \
  -e "OS_PASSWORD=$OS_PASSWORD" \
  -e "OS_PROJECT_ID=$OS_PROJECT_ID" \
  -e "OS_REGION_NAME=$OS_REGION_NAME" \
  -e "OS_TENANT_ID=$OS_TENANT_ID" \
  -e "OS_USERNAME=$OS_USERNAME" \
  -e "TROVE_SERVICE_TYPE=$TROVE_SERVICE_TYPE" \
  adamalex/trove:1.0.5 $*

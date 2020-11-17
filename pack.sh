#!/bin/bash
WORKFLOW_FOLDER="user.workflow.97A3546B-412C-4929-9128-55B331032CC2"
TARGET="/Users/fatih.yavuz/Library/Application Support/Alfred 3/Alfred.alfredpreferences/workflows/${WORKFLOW_FOLDER}"
cp "${TARGET}"/info.plist ./src
#cp -R -f ./src/* "${TARGET}"

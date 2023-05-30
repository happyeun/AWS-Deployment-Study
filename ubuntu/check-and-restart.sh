#!/bin/bash

# env variables
source ./var.sh

# check and restart
if [ -z "$PROJECT_PID" ]; then
        nohup java -jar -Dspring.profiles.active=prod ${JAR_PATH} 1>>${HOME}/log.out 2>> ${HOME}/err.out &
fi
~

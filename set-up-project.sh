#!/bin/bash
source set-up-project-folder.sh $3
source set-up-create-database.sh $1
source set-up-create-nginx.sh $1 $2
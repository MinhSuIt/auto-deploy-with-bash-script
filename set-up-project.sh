#!/bin/bash
source set-up-project-folder.sh $3 $1
source set-up-create-database.sh $4
source set-up-create-nginx.sh $1 $2
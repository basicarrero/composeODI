#!/bin/bash

# Copyright (c) 2017 Oracle and/or its affiliates. All rights reserved.
#
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl.

if [ $# -ne 5 ]; then
  echo usage: wait_for_db.sh oracle_home username host port service
  echo password is provided on stdin
  exit 1
fi

ORACLE_HOME=$1
DB_USERNAME=$2
DB_HOST=$3
DB_PORT=$4
DB_SERVICE=$5
DB_PASSWORD=$(cat)


echo "Waiting for DB"
source /u01/oracle/wlserver/server/bin/setWLSEnv.sh
until java utils.dbping ORACLE_THIN "$DB_USERNAME as sysdba" $DB_PASSWORD $DB_HOST:$DB_PORT/$DB_SERVICE > /dev/null 2>&1
do
  echo "Waiting for DB..."
  sleep 10
done
echo "DB is available"

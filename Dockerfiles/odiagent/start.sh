#!/bin/bash

export CONNECTION_STRING=$DB_HOST:$DB_PORT/$DB_SERVICE.localdomain
echo $DB_PASSWORD | /u01/oracle/container-scripts/wait_for_db.sh /u01/oracle/ sys $DB_HOST $DB_PORT $DB_SERVICE.localdomain
/u01/oracle/container-scripts/CreateODIDomainandRunAgent.sh

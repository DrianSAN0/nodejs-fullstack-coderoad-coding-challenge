#!/bin/bash
LOGFILE="/var/log/deploy_site.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "[$DATE] Deploy started" >> $LOGFILE

# Copiar backend compilado
cp -r server/dist/* /var/www/html/server/

# Copiar frontend construido
cp -r client/build/* /var/www/html/client/

echo "[$DATE] Deploy finished successfully" >> $LOGFILE

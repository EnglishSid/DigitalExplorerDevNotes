# Backup script for production database

Schedule : Daily @ 5am

reference : https://neo4j.com/developer/kb/how-to-setup-neo4j-backup-script/

script - backup (remove the .sh)

corrections to the script

remove the `/r` control codes 

`sed -i -e 's/\r$//' create_mgw_3shelf_6xIPNI1P.sh`




## Crontab entry

`sudo crontab -e`


`30 3 * * 1 sudo /opt/neo4j-enterprise-3.5.3/bin/backup -d /opt/neo4jBackup/ -c false >/opt/neo4jBackup/log 2>&1`


## Checking the cronjob

`grep CRON /var/log/syslog`

also review the `/opt/neo4jBackup/log file`

---

### cronjob on Prod (?)

* * * * * [ -f /etc/krb5.keytab ] && [ \( ! -f /etc/opt/omi/creds/omi.keytab \) -o \( /etc/krb5.keytab -nt /etc/opt/omi/creds/omi.keytab \) ] && /opt/omi/bin/support/ktstrip /etc/krb5.keytab /etc/opt/omi/creds/omi.keytab >/dev/null 2>&1 || true



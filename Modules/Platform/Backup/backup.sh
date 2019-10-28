#!/bin/bash

##########################################################################
#    Name         : backupDatabase.sh
#
#    Copyright (c)  2002-2019 "Neo4j,"
#                   Neo4j Sweden AB [http://neo4j.com]
#                   This file is a commercial add-on to Neo4j Enterprise Edition.
#
#    Description  : This program uses "neo4j-admin backup" to backup an EE database while running.
#
#    Input(s)     : The backup destination directory's full path.
#
#    Notes        : 
##########################################################################
# User variables
#
NEO4J_HOME="/opt/neo4j-enterprise-3.5.3"		#CHANGE ME
NEO4J_CONFDIR="/opt/neo4j-enterprise-3.5.3/conf" #CHANGE ME
NEO4J_USER=neo4j 				   	#POSSIBLY CHANGE ME

timestamp=`date +%m%d%Y`
logFile=$NEO4J_HOME/logs/backupDatabase_$timestamp.log 	#CHANGE ME
#bname=graph.db-backup                          	#POSSIBLY CHANGE ME, USED FOR INCREMENTAL BACKUPS
bname=graph.db-backup-$timestamp                	#POSSIBLY CHANGE ME, USED FOR FULL BACKUPS
fromHost=localhost 					#CHANGE ME IF RUNNING REMOTELY
heapSize=2G                                     	#POSSIBLY CHANGE ME
pageCache=4G 						#POSSIBLY CHANGE ME

backupFileDir=""
ccheck=true
TMPFILE=/tmp/cfg$$
TEE=/usr/bin/tee

####
#### To send email notifications, uncomment the following variables
####
#SENDMAIL=/usr/sbin/sendmail
#export DBA_EMAIL="dbaemail@acme.com" 		#Set to email address for backup success notifications
#export DBA_PAGER="dbapager@acme.com"  		#Set to email address for backup failure notifications
#export BACKUP_FROM="backup.neo4j@host.com"	#Set to an appropriate domain
#EMAIL_HDR="To:${DBA_EMAIL}\nFrom:${BACKUP_FROM}"
#SUBJ_F="Subject: BACKUP of Neo4j instance at `date` --- FAILED\n"
#SUBJ_S="Subject: BACKUP of Neo4j instance at `date` --- SUCCESS\n"
#SUBJ_W="Subject: BACKUP of Neo4j instance at `date` --- SUCCESS WITH WARNING\n"
#### Uncomment to here for email notifications

#########################################################################
#
# Function_name: usage_error
# Inputs:        None
# Purpose:       Will be invoked whenever script encounters
#                an invalid parameter or unhandled error
#
##########################################################################
function usage_error
{
   echo ""
   echo "usage: $0 -d <>"
   echo "     -d Backup destination directory to save files to (Mandatory)"
   echo "     -b Backup name : Default graph.db-backup (Optional)"
   echo "     -f Set From Host : Default localhost (Optional)"
   echo "     -c Run Consistency Check [false] : Default true (Optional)"
   echo "     -m Set HEAP_SIZE : Default 2G (Optional)"
   echo "     -p Set pache cache : Default 4G (Optional)"
   echo "     -h  Print help message"
   echo
   echo "      Environment variables that need to be set are:"
   echo "              NEO4J_HOME: The Neo4j Home Directory"
   echo
   exit 1
}

# First process all the command line options.
#
while getopts ":d:b:f:c:m:p:h"  nextarg
do
        case $nextarg in
                d ) backupFileDir=$OPTARG;;
                b ) bname=$OPTARG;;
                f ) fromHost=$OPTARG;;
                c ) ccheck=$OPTARG;;
                m ) heapSize=$OPTARG;;
                p ) pageCache=$OPTARG;;
                h | \? ) usage_error;;
       esac
done
shift $(($OPTIND -1 ))

function isdbup
{
        # Uncomment the line below if Neo4j IS NOT running via console
        "${NEO4J_HOME}/bin/neo4j" status | grep "is running" > /dev/null
      
        # Uncomment the line below if Neo4j IS running via console
        # ps -ef | grep ${NEO4J_USER} | grep -v grep | grep java > /dev/null

        RET=$?
        #if [ $RET -eq 0 ]; then
        #   echo "Neo4j database processes are running"
        #fi

        return $RET
}

function checkDataDir
{
        dbDataDir=`cat $NEO4J_CONFDIR/neo4j.conf | grep "^dbms.directories.data" | cut -d"=" -f2` #> /dev/null
        if [ "$dbDataDir" = "" ]; then
           echo "Neo4j database data directory is set to the default <neo4j-home>/data or /var/lib/neo4j/data"
           echo
        else 
           echo "Neo4j database data directory is set to $dbDataDir in neo4j.conf"
        fi
}


###########################################################
# Script starts here
###########################################################
echo

# Remove log file if it exists and recreate
#
if [ -e $logFile ]; then
rm $logFile
else
   touch $logFile
fi

# Check if the log directory can be written to
#
logDir=`dirname ${logFile}`
if [ ! -w ${logDir} ]; then
        echo "The log file ${logFile} cannot be created"
        echo "Check if the path exists and also the permissions on the directory"
        exit 2
fi

# Check if the Destination directory has been specified (it is mandatory)
#
if [ "${backupFileDir}" = "" ]; then
        echo "The backup destination directory has not been specified" | ${TEE} -a ${logFile}
        usage_error;
        exit 3
fi

# Check if the Destination directory exists
#
if [ ! -d "${backupFileDir}" ]; then
        echo "The backup destination directory specified does not exist" | ${TEE} -a ${logFile}
        usage_error;
        exit 4
fi

# Check if the Destination directory can be written to
#
if [ ! -w "${backupFileDir}" ]; then
        echo "The backup destination directory is not accessible" | ${TEE} -a ${logFile}
        echo "Check if the path exists and also the permissions on the directory" | ${TEE} -a ${logFile}
        exit 5
fi

#Check if the database is UP and running
isdbup
if [ $? -ne 0 ]; then
   echo "The Neo4j database is shutdown, please start before attempting to backup" | ${TEE} -a ${logFile}
   echo "Backup Failed at `date`" | ${TEE} -a ${logFile}
   if [ ! -z "$SENDMAIL" ]; then
		(echo -e "$EMAIL_HDR\n$SUBJ_F" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_PAGER}";
   fi
   exit 6
fi

#Check the size of the data directory
checkDataDir

# Check size of source directory (in KB)
#
if [ "${dbDataDir}" = "" ]; then
   if [ -d ${NEO4J_HOME}/data ]; then
      sSize=`du -ks ${NEO4J_HOME}/data | cut -f1 | sed -e 's/^[ \t]*//'`
   elif [ -d /var/lib/neo4j/data ]; then
      sSize=`du -ks /var/lib/neo4j/data | cut -f1 | sed -e 's/^[ \t]*//'`
   fi
else
   if [ ! -d "${NEO4J_HOME}/${dbDataDir}" -a ! -d "${dbDataDir}" ]; then
      echo "Data directory ${dbDataDir} does not exist, backup Failed at `date`" | ${TEE} -a ${logFile}
      if [ ! -z "$SENDMAIL" ]; then
			(echo -e "$EMAIL_HDR\n$SUBJ_F" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_PAGER}";
      fi
      exit 7
   else
      if [ -d ${NEO4J_HOME}/${dbDataDir} ]; then
         sSize=`du -ks ${NEO4J_HOME}/${dbDataDir} | cut -f1 | sed -e 's/^[ \t]*//'`
      else
         sSize=`du -ks ${dbDataDir} | cut -f1 | sed -e 's/^[ \t]*//'`
      fi
   fi
fi

# Check size of backup directory (in KB)
#
bSize=`df -hk --output=avail ${backupFileDir} | sed 1d | sed -e 's/^[ \t]*//'`

# Check if backup location has sufficient space to hold the backup
#
if [ "${sSize}" -gt "${bSize}" ]; then
   echo "Not enough space in ${backupFileDir} to perform backup, backup Failed at `date`" | ${TEE} -a ${logFile}
   if [ ! -z "$SENDMAIL" ]; then
		(echo -e "$EMAIL_HDR\n$SUBJ_F" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_PAGER}";
   fi
   exit 8
fi

echo "Starting backup of database to ${backupFileDir}/${bname} at `date`" | ${TEE} -a ${logFile}
echo "The log of the backup process can be found at ${logFile}" | ${TEE} -a ${logFile}
echo | ${TEE} -a ${logFile}

# Explicitly set HEAP_SIZE
#
export HEAP_SIZE=${heapSize}

# Backup the database
#
"${NEO4J_HOME}/bin/neo4j-admin" backup --from=${fromHost} --backup-dir="${backupFileDir}" --name=${bname} --fallback-to-full=true --check-consistency=false --pagecache=${pageCache} 2>&1 | ${TEE} -a ${logFile}
RET=$?

# Check backup log for errors
#
grep -v "WARNING: Max 1024 open files allowed" ${logFile} | grep -e "ERROR" -e "error" -e "WARN" -e "failed"
if [ $? -ne 0 -a $RET -eq 0 ]; then
    echo | ${TEE} -a ${logFile}
    echo "Backup Succeeded at `date`" | ${TEE} -a ${logFile}
    if [ ! -z "$SENDMAIL" ]; then
        (echo -e "$EMAIL_HDR\n$SUBJ_S" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_EMAIL}";
    fi

    ####
    #### Insert copy to external storage here...
    ####

   if [ "${ccheck}" = "true" ]; then
        # If backup is successful and ccheck wasnt run, then run a consistency check on the backup
        #
        echo | ${TEE} -a ${logFile}
        echo "Performing backup consistency check at `date`" | ${TEE} -a ${logFile}
        "${NEO4J_HOME}/bin/neo4j-admin" check-consistency --backup="${backupFileDir}/${bname}" 2>&1 | ${TEE} -a ${logFile}
        #Check for errors
        #
        grep -e "ERROR" -e "WARN" -e "failed" -e "Inconsistencies" ${logFile}
        if [ $? -eq 0 -o $RET -ne 0 ]; then
           echo "Consistency check Failed at `date`" | ${TEE} -a ${logFile}
        else
           echo | ${TEE} -a ${logFile}
           echo "Consistency check Succeeded at `date`" | ${TEE} -a ${logFile}
           
           ####
           #### Insert copy to external storage here...
           ####

           if [ ! -z "$SENDMAIL" ]; then
				(echo -e "$EMAIL_HDR\n$SUBJ_S" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_EMAIL}";
           fi
	 fi
   fi

elif [ $RET -eq 1 ]; then
        echo "Backup Failed at `date`" | ${TEE} -a ${logFile}
        if [ ! -z "$SENDMAIL" ]; then
			(echo -e "$EMAIL_HDR\n$SUBJ_F" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_PAGER}";
        fi
elif [ $RET -eq 2 ]; then
        echo "Backup Succeeded, but consistency check failed at `date`" | ${TEE} -a ${logFile}
        if [ ! -z "$SENDMAIL" ]; then
			(echo -e "$EMAIL_HDR\n$SUBJ_W" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_EMAIL}";
        fi
elif [ $RET -eq 3 ]; then
        echo "Backup Succeeded, but consistency check found inconsistencies at `date`" | ${TEE} -a ${logFile}
        if [ ! -z "$SENDMAIL" ]; then
			(echo -e "$EMAIL_HDR\n$SUBJ_W" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_EMAIL}";
        fi
else
        echo "Backup Failed at `date`" | ${TEE} -a ${logFile}
        if [ ! -z "$SENDMAIL" ]; then
			(echo -e "$EMAIL_HDR\n$SUBJ_F" ; cat $logFile ; ) | ${SENDMAIL} -f"${BACKUP_FROM}" "${DBA_PAGER}";
        fi
fi

echo | ${TEE} -a ${logFile}
echo "End backup of database to ${backupFileDir}/${bname} at `date`" | ${TEE} -a ${logFile}

exit 0
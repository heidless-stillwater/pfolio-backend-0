
# credentials ENCRYPT

#########################
#
passphrase:
the widening gyre 0

keyring:
arjuna11

#########
# encrypt
#
cd Admin/encrypted

#export FILE_NAME=RoR-APP-INSTALL-blog.md

export FILE_NAME=heidless-portfolio-4-1bd52a699700.json
echo FILE_NAME: ${FILE_NAME}

gpg --output ${FILE_NAME}.gpg --encrypt --recipient rob.lockhart@yahoo.co.uk ${FILE_NAME}

#########
# decrypt
#
gpg --output ${FILE_NAME} --pinentry-mode=loopback --decrypt ${FILE_NAME}.gpg


# DB Backup

cd pfolio-backend

source config/.env-vars

## set SERVICE ACCOUNT Permissons
```
--
# set permissoons on INSTANCE service account
echo ' '
echo '#################################'
echo '#### SET PERMISSIONS - objectAdmin & legacyBucketWriter'
echo GCP_INSTANCE: ${GCP_INSTANCE}
export SQL_SVC_ACC=`gcloud sql instances describe ${GCP_INSTANCE} | grep serviceAccountEmailAddress`
echo SQL_SVC_ACC: ${SQL_SVC_ACC}

export DB_SVC_ACCOUNT=`echo ${SQL_SVC_ACC}|sed 's/.* //g'`
echo DB_SVC_ACCOUNT: ${DB_SVC_ACCOUNT}

###############################
# set PERMISSION on Svc Account
echo DB_SVC_ACCOUNT: ${DB_SVC_ACCOUNT}
echo GCP_BUCKET: ${GCP_BUCKET}

echo ' '
echo 'objectAdmin'
echo gsutil iam ch serviceAccount:${DB_SVC_ACCOUNT}:objectAdmin gs://${GCP_BUCKET}
gsutil iam ch serviceAccount:${DB_SVC_ACCOUNT}:objectAdmin gs://${GCP_BUCKET}

<!-- 
echo ' '
echo 'legacyBucketOwner'
echo gsutil iam ch serviceAccount:${DB_SVC_ACCOUNT}:legacyBucketOwner gs://${GCP_BUCKET}
gsutil iam ch serviceAccount:${DB_SVC_ACCOUNT}:legacyBucketOwner gs://${GCP_BUCKET}
 -->

```

# Take Backup
#
timestamp=`date +%s`
MSG=2nd-DRAFT

echo PROJECT: $GCP_PROJECT
echo INSTANCE: $GCP_INSTANCE
echo DB: $GCP_DB_NAME
echo USER: $GCP_DB_USER
echo BUCKET: $GCP_BUCKET

export BK_PREFIX=${GCP_INSTANCE}
echo BK_PREFIX: ${BK_PREFIX}

export BK_COMMENT='-snapshot-'
echo COMMENT: $BK_COMMENT

export BK_TIMESTAMP=`date +%s`
echo TIMESTAMP: $BK_TIMESTAMP

#export GCP_FILE=${GCP_DB_NAME}-${BK_COMMENT}-${BK_TIMESTAMP}.gz

export GCP_FILE=${BK_PREFIX}-${BK_COMMENT}-${BK_TIMESTAMP}.gz
echo FILE: ${GCP_FILE}

echo ' '

echo '######################'
echo 'BACKUP DB'
echo BK_PREFIX: ${BK_PREFIX}
echo GCP_INSTANCE: ${GCP_INSTANCE}
echo GCP_BUCKET: ${GCP_BUCKET}
echo GCP_FILE: ${GCP_FILE}
echo GCP_DB_NAME: ${GCP_DB_NAME}
echo ' '

gcloud sql export sql ${GCP_INSTANCE} gs://${GCP_BUCKET}/backups/${GCP_FILE}    \
--database=${GCP_DB_NAME}	 \
--offload


# DOWNLOAD BACKUPls
# cd <BACKUP DIR>

echo GCP_BUCKET: $GCP_BUCKET
echo GCP_FILE: $GCP_FILE
gcloud storage cp gs://${GCP_BUCKET}/backups/${GCP_FILE} .

...

##############
# RE-CREATE DB
# pq: database "photo-app-0-db-0" is being accessed by other users
# CLOSE ALL TABS ACCESSING APP
#
source config/.env-vars
echo ' '
echo 're-create DB'
echo GCP_DB_NAME: $GCP_DB_NAME
echo GCP_INSTANCE: $GCP_INSTANCE
echo ' '
gcloud sql databases delete $GCP_DB_NAME \
    --instance $GCP_INSTANCE

gcloud sql databases create $GCP_DB_NAME \
    --instance $GCP_INSTANCE


sh ./prestoDocker/build.sh

oc apply -f presto-coordinator-deploy.yml -n telco-datastorage-mvp

oc apply -f presto-coordinator-pvc.yml -n telco-datastorage-mvp

oc apply -f presto-worker-deploy.yml -n telco-datastorage-mvp

oc apply -f presto-worker-pvc.yml -n telco-datastorage-mvp

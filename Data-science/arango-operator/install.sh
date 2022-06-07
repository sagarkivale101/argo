oc apply -f arango-crd.yaml -n telco-datastorage-mvp

oc apply -f arango-deployment.yaml -n telco-datastorage-mvp

oc apply -f arango-deployment-replication.yaml -n telco-datastorage-mvp

oc apply -f arango-storage.yaml -n telco-datastorage-mvp

oc apply -f graph-arangodb-deploy.yml -n telco-datastorage-mvp


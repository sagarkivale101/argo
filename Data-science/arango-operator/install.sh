kubectl apply -f arango-crd.yaml -n telco-datastorage-mvp

kubectl apply -f arango-deployment.yaml -n telco-datastorage-mvp

kubectl apply -f arango-deployment-replication.yaml -n telco-datastorage-mvp

kubectl apply -f arango-storage.yaml -n telco-datastorage-mvp

kubectl apply -f graph-arangodb-deploy.yaml -n telco-datastorage-mvp

kubectl apply -f cluster-server.yaml -n telco-datastorage-mvp


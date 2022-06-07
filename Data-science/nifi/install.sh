oc apply -f 01-nifi-deploy.yml -n telco-webapplications-mvp

oc apply -f 02-nifi-pvc.yml -n telco-webapplications-mvp

oc apply -f 03-nifi-service.yml -n telco-webapplications-mvp

oc apply -f 04-nifi-route.yml -n telco-webapplications-mvp

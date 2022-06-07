export OCP_REGISTRY=default-route-openshift-image-registry.apps.mvp.telcostackmvp.br.telefonica.com
sudo docker build -t $OCP_REGISTRY/telco-datastorage-mvp/presto:latest .
sudo docker login -u admin -p "sha256~mCnou3FvJbb7txaC-bXvCNh71QD7RjZClG83qPpukWo" default-route-openshift-image-registry.apps.mvp.telcostackmvp.br.telefonica.com 
sudo docker push default-route-openshift-image-registry.apps.mvp.telcostackmvp.br.telefonica.com/telco-datastorage-mvp/presto

Install chart from helm repository
charts in `charts/`` folder are packaged and available at Gradiant's helm repo:

https://gradiant.github.io/bigdata-charts/

You can add the helm repo to your Helm CLI:

helm repo add bigdata-gradiant https://gradiant.github.io/bigdata-charts/

to install hive

helm install hive bigdata-gradiant/hive

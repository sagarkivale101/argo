
#<$1> argument as namespace where to install hivemr

NAMESPACE=$1

if [ -z "$NAMESPACE" ];

then
    echo  "Argument1:Missing mandatory argument:Namespace. "
    exit 1
fi

cd kubernetes 

echo $1
helm install --namespace $1 helm/hive -f values-test.yaml


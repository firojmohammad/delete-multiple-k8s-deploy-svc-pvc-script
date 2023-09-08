kubectl delete deployment $1
kubectl delete pvc $1-pvc $1-db-pv-claim
kubectl delete svc $1-pgsql-service $1-service

kubectl delete ingress $1-ingress

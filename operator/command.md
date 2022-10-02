# Jenkins Operator

```
NAMESPACE="tooling"
NAME="jenkins"

kubectl create namespace $NAMESPACE

helm repo add jenkins https://raw.githubusercontent.com/jenkinsci/kubernetes-operator/master/chart
helm install $NAME jenkins/jenkins-operator -n $NAMESPACE -f values.yaml


kubectl config set-context --current --namespace=$NAMESPACE
kubectl get secret jenkins-operator-credentials-jenkins -o 'jsonpath={.data.user}' | base64 -d
kubectl get secret jenkins-operator-credentials-jenkins -o 'jsonpath={.data.password}' | base64 -d

kubectl port-forward jenkins-jenkins 8080:8080
```
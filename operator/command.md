# Jenkins Operator

```
NAMESPACE="tooling"
NAME="jenkins"

kubectl create namespace $NAMESPACE

helm repo add jenkins https://raw.githubusercontent.com/jenkinsci/kubernetes-operator/master/chart
helm install $NAME jenkins/jenkins-operator -n $NAMESPACE -f values.yaml

kubectl --namespace tooling get secret jenkins-operator-credentials-jenkins -o 'jsonpath={.data.user}' | base64 -d
  jenkins-operator
kubectl --namespace tooling get secret jenkins-operator-credentials-jenkins -o 'jsonpath={.data.password}' | base64 -d
  RLSOdCIOJpKTJrnHjWdG

kubectl --namespace tooling port-forward jenkins-jenkins 8080:8080

```
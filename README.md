# Course work czech-lang tg school 

## Install audio service

namespace default
```bash
helm install audio ./app -f ./audio-service/values.yaml
```

## Install auth service

namespace default
```bash
helm install auth ./app -f ./auth-service/values.yaml
```

## Install dictionary service

namespace default
```bash
helm install dictionary ./app -f ./dictionary-service/values.yaml
```

## Install file service

namespace default
```bash
helm install file ./app -f ./file-service/values.yaml
```

## Install flow service

namespace default
```bash
helm install flow ./app -f ./flow-service/values.yaml
```

## Install lessons service

namespace default
```bash
helm install lesson ./app -f ./lesson-service/values.yaml
```

## Install payment service

namespace default
```bash
helm install payment ./app -f ./payment-service/values.yaml
```

## Install Kafka
Add repo
```bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
helm install kafka bitnami/kafka
```

## Installation nginx ingress

If you are using minikube, turn on ingress addon with command
```bash
minikube addons  enable ingress
```

Add repo
```bash
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
```
Install nginx-ingress
```bash
helm install --version "3.35.0" -n nginx-ingress -f ./nginx-ingress/nginx.yaml \
ingress-nginx ingress-nginx/ingress-nginx
```

Apply routes
```bash
kubectl apply -f ./nginx-ingress/routes.yaml

minikube service -n nginx-ingress ingress-nginx-controller
```

## Uninstall

```bash
helm un auth
helm un flow
helm un file
helm un audio
helm un lesson
helm un payment
helm un dictionary
```

Link to course: https://otus.ru/lessons/microservice-architecture
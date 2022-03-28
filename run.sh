#!/bin/bash

helm install auth ./app -f ./auth-service/values.yaml
helm install flow ./app -f ./flow-service/values.yaml
helm install audio ./app -f ./audio-service/values.yaml
helm install file ./app -f ./file-service/values.yaml
helm install payment ./app -f ./payment-service/values.yaml
helm install lesson ./app -f ./lesson-service/values.yaml
helm install dictionary ./app -f ./dictionary-service/values.yaml

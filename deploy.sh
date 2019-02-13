#!/usr/bin/env bash

set -xe

kubectl patch deployment mywebsite-deployment -p "{\"spec\":{\"template\":{\"metadata\":{\"labels\":{\"date\":\"$(date +%s)\"}}}}}"
kubectl apply -f deployment.yml
kubectl apply -f service.yml
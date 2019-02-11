#!/usr/bin/env bash

set -xe

kubectl apply -f deployment.yml
kubectl apply -f service.yml
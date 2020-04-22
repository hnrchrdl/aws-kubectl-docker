#!/bin/bash
set -e
echo $AWS_DEFAULT_REGION
echo $CLUSTER_NAME

aws eks --region $AWS_DEFAULT_REGION update-kubeconfig --name $CLUSTER_NAME

exec "$@"

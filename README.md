# aws-kubectl docker image

This docker image was created to help managing of cluster in AWS, for example managed with EKS, mainly in CI/CD environments.

Dockerhub: [hrnchrdl/aws-kubectl](https://hub.docker.com/repository/docker/hnrchrdl/aws-kubectl)

## Example usage

```bash
docker run --rm \
 -e AWS_ACCESS_KEY_ID=<aws_access_key_id> \
 -e AWS_SECRET_ACCESS_KEY=<aws_secret_access_key> \
 -e AWS_DEFAULT_REGION=<aws_region_key> \
 hnrchrdl/aws-kubectl \
 /bin/bash -c "aws eks --region eu-central-1 update-kubeconfig --name <name_of_cluster> && kubectl get svc"
```

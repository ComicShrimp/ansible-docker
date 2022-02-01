# ansible-docker

Docker with Ansible and AWS CLI installed.

## Usage

Get the image using docker pull:
  
`docker pull comicshrimp/ansible`

To configure de AWS CLI, you just need to use environment variables with the values. The variables you need to set are:
   
`AWS_ACCESS_KEY_ID=Your_AWS_Access_KEY`  
`AWS_SECRET_ACCESS_KEY=Your_AWS_Secret_Access_Key`  
`AWS_DEFAULT_REGION=us-east-1`

Docker run example:

`docker run -it --rm -e AWS_ACCESS_KEY_ID=Your_AWS_Access_KEY -e AWS_SECRET_ACCESS_KEY=Your_AWS_Secret_Access_Key -e AWS_DEFAULT_REGION=us-east-1 comicshrimp/ansible <command>`

## References

- https://github.com/mateusmuller/k8s-cluster-spinup
- https://github.com/onesysadmin/ansible-docker
- https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html

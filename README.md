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

To execute the image in CI, you need to create inside the container a configuration file with the credentials, in order to ansible/boto3 get the credentials.
Your credentials file must be created at `~/.aws/credentials` and the file should look like this example below:  

```
[default]
aws_access_key_id = Your_AWS_Secret_Access_Key
aws_secret_access_key = Your_AWS_Access_KEY
```

and the following in the `~/.aws/config`

```
[default]
region=us-west-2
output=json
```

## References

- https://github.com/mateusmuller/k8s-cluster-spinup
- https://github.com/onesysadmin/ansible-docker
- https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
- https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html

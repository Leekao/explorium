# Explorium Hello World

This Dockerfile and playbook will deploy multiple instances of `flask-helloworld.py` to a new ec2 instance.

## Prequisites
1. You'll need a a key-pair name and .PEM to connect to ec2
2. You'll need an IAM accesskey and secret to provision the instance

## How to use
- Clone the repo
- Open `vars/aws.yml`, replace the values with real values
- Edit helloworld.yml and replace `example.pem` with path to real .pem
- Change subnet-vpc, group, region, etc values in the ec2 section of the playbook
- Run `ansible-playbook helloworld.yml`

## Take note
- If you want the change the number of helloworld instances running on the ec2 instance change the the value instances in `/vars/helloworld.yml`
- The helloworld instances will be listening on port 8001+, so if you have 3 they will listen on 8001, 8002, 8003, you will need to load balance them or expose them youself.

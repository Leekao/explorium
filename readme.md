# Explorium Hello World

this Dockerfile and playbook will deploy flask-helloworld to a new ec2 instance,
build the image and run multiple instances of the image.

## Prequisites
1. You'll need a a key-pair name and .PEM to connect to ec2
2. You'll need an IAM accesskey and secret to provision the instance
3. You'll need to have a localhost group in your ansible, if not change helloworld.yml localhost to your localhost group name

## How to use
- Clone the repo
- Open `vars/aws.yml`, replace the values with real values
- Edit helloworld.yml and replace `example.pem` with path to real .pem
- Change subnet-vpc and group values in the ec2 section of the playbook
- Run `ansible-playbook helloworld.yml`

## Take note
- If you want the change the number of helloworlds running on the instance change the instances in `/vars/helloworld.yml`
- The instances will be listening on port 8001+, so if you have 3 they will listen on 8001, 8002, 8003, so you will need to load balance them.
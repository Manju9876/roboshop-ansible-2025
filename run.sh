git pull
ansible-playbook -i $1-dev.devopsbymanju.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e component_name=$1 roboshop.yaml


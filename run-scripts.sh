if [ -z "$1" ]; then
  echo "component name is missing"
  exit 1
fi
ansible-playbook -i $1-dev.devopsbymanju.shop, \
-e ansible_user=ec2-user -e ansible_password=DevOps321 \
-e component_name=$1 roboshop.yaml

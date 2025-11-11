default:
	 git pull
	 ansible-playbook -i $(component_name)-dev.devopsbymanju.shop, \
	 -e ansible_user=ec2-user -e ansible_password=DevOps321 \
 	 -e component_name=$(component_name) -e env=$(env) roboshop.yaml

all:
	git pull
	ansible-playbook -i frontend-dev.devopsbymanju.shop, \
	-e ansible_user=ec2-user -e ansible_password=DevOps321 \
	-e env=$(env) roboshop.yaml

	ansible-playbook -i mongodb-dev.devopsbymanju.shop, \
    -e ansible_user=ec2-user -e ansible_password=DevOps321 \
    -e env=$(env) roboshop.yaml

	ansible-playbook -i catalogue-dev.devopsbymanju.shop. \
	-e ansible_user=ec2-user -e ansible_password=DevOps321
	-e env=$(env) roboshop.yaml


                                                 
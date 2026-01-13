default:
	git pull
	ansible-playbook -i $(component_name)-dev.devopsbymanju.shop, \
	-e ansible_user=ec2-user -e ansible_password=DevOps321 \
	-e component_name=$(component_name) -e env=$(env) roboshop.yaml -e vault_token=$(vault_token)

all:
	git pull
	ansible-playbook -i frontend-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=frontend roboshop.yaml

	ansible-playbook -i mongodb-dev.devopsbymanju.shop, \
    	-e ansible_user=ec2-user -e ansible_password=DevOps321 \
    	-e env=$(env) -e vault_token=$(vault_token) -e component_name=mongodb roboshop.yaml

	ansible-playbook -i catalogue-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=catalogue roboshop.yaml

	ansible-playbook -i redis-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=redis roboshop.yaml

	ansible-playbook -i user-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=user roboshop.yaml

	ansible-playbook -i cart-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=cart roboshop.yaml

	ansible-playbook -i mysql-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=mysql roboshop.yaml

	ansible-playbook -i shipping-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=shipping roboshop.yaml

	ansible-playbook -i rabbitmq-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=rabbitmq roboshop.yaml

	ansible-playbook -i payment-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=payment roboshop.yaml

	ansible-playbook -i dispatch-dev.devopsbymanju.shop, \
		-e ansible_user=ec2-user -e ansible_password=DevOps321 \
		-e env=$(env) -e vault_token=$(vault_token) -e component_name=dispatch roboshop.yaml


docker:
	git pull
	ansible-playbook -i cart-dev.devopsbymanju.shop, \
	-e ansible_user=ec2-user -e ansible_password=DevOps321 \
	-e component_name=$(component_name) roboshop.yaml

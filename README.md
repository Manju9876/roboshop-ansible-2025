# roboshop-ansible-2025

#hello ansible
#ansible is easy to understanad and write code 


#loop to retrive the vault secret
{% for item in secrets %}
Environment={{ item }}="{{ lookup('community.hashi_vault.hashi_vault','secret=roboshop-' ~ env ~ '-secrets/data/' ~ component_name ~ ':' ~ item ~ ' token=' ~ vault_token ~ ' url=http://13.221.206.120:8200') }}"
{% endfor %}



        location /api/user/ { proxy_pass http://user-{{ env }}.devopsbymanju.shop:8080/; }
        location /api/cart/ { proxy_pass http://cart-{{ env }}.devopsbymanju.shop:8080/; }
        location /api/shipping/ { proxy_pass http://shipping-{{ env }}.devopsbymanju.shop:8080/; }
        location /api/payment/ { proxy_pass http://payment-{{ env }}.devopsbymanju.shop:8080/; }

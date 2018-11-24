Segue Rotina de execução. 

- Instalar "terraform"
    URL: https://www.terraform.io/intro/getting-started/install.html
- instalar "Ansible"
    URL: https://docs.ansible.com/ansible/2.5/installation_guide/intro_installation.html
- cd terraform
Adionar a chave do usuario de acesso da AWS.
    - ADD access_key = "" -> dentro do aqruivo main.tf
    - ADD secret_key = "" -> dentro do aqruivo main.tf
- Entrei no diretorio do terraform: "cd terraform" 
- Execulte o comando "terraform init"
- Execulte o comando "terraform plan"
- Execulte o comando "terraform apply"
- Execulte o comando "chmod 600" na chave dentro do direotio: /ansible/key_terraform.pem
- Espera o processo concluir e copie o IP gerado para dentro do arquivo: /trabalho/ansible/hosts
- Entrei no diretorio do ansible: "cd ansible" 
- Execulte o comando "ansible-playbook -i hosts playbook.yml"

Pronto a magica esta feita! 

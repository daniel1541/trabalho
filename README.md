# trabalho

- Instalar "terraform"
    URL: https://www.terraform.io/intro/getting-started/install.html
- instalar "Ansible"
    URL: https://docs.ansible.com/ansible/2.5/installation_guide/intro_installation.html
- cd terraform
ADD a chave do usuario de acesso da AWS.
    - ADD access_key = "" -> dentro do aqruivo main.tf
    - ADD secret_key = "" -> dentro do aqruivo main.tf
- Entrei no diretorio do terraform: "cd terraform" 
- execulte o comando "terraform init"
- execulte o comando "terraform plan"
- execulte o comando "terraform apply"
- Espera o processo concluir e copie o IP gerado para dentro do arquivo: /trabalho/ansible/hosts
- Entrei no diretorio do ansible: "cd ansible" 
- execulte o comando "ansible-playbook -i hosts playbook.yml"

Participantes:

Daniel Queiroz
Valtemberg Soares
Samuel Soares
Afro Vasconcelos
Denys Ledislau (Fez cirugia e não pode participar da apresentanção, mas ajudou na configuração)

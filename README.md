# Ansible Install Pack
Este projeto visa criar um playbook para instalar todos os pacotes necessários num pós formatação de Linux em Várias distribuições.
## Pré-Requisitos
Instalar o Ansible:
- Para Debian e derivadas
```bash
sudo apt install ansible
```
- Para Redhat e Derivadas
```bash
sudo dnf install ansible
```
## Distros Suportadas
- Debian 10

## Distros Derivadas testadas
- Deepin 20.2 (Debian 10.8)

# Como Usar o Playbook
## Execução do Playbook
### No Tags
Para Instalação completa sem a necessidade de Definir Ambiente
> NOTA: Podem acontecer erros devido as distribuições utilizadas
```bash
ansible-playbook -i hosts site.yml -e usuario=$USER
```
### Com Tags
Executa o playbook de acordo com a tag de Sistemas Operacionais indicadas.
```bash
ansible-playbook -i hosts site.yml -e usuario=$USER --tags debian10
```
Necessário reiniciar depois da instalação do Docker
```bash
shutdown -r now
```
### Tags Disponiveis
- debian10

# Ansible Install Pack
Este projeto visa criar um playbook para instalar todos os pacotes necessários num pós formatação de Linux em Várias distribuições.
## Pré-Requisitos
### Instalar o pacotes necessários
- Para Debian e derivadas
```bash
sudo apt install ansible git openssh-server
```
- Para Redhat e Derivadas
```bash
sudo dnf install ansible  git openssh-server
```
### Ajustar Permissões
Ajustar Permissões de sudo para não solicitar senha:

```bash
echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
```
### Permissão do SSH
Deve adicionar sua chave ssh publica no seu diretório Local
```bash
cd /home/$USER/.ssh/
cp -rp id_rsa.pub authorized_keys
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
ansible-playbook -i hosts site.yml -e usuario=$USER --tags buster
```
Necessário reiniciar depois da instalação do Docker
```bash
shutdown -r now
```
### Tags Disponiveis
- buster (Para Debian 10 e Derivadas)
- focal (Para Ubuntu e Derivadas)

# Distribuições Testadas
- Debian 10 (Buster)
- Deepin 20.2 (Based on Debian 10.8 Buster)
- Ubuntu 20.04 LTS (Focal Fossa)
- Pop!_OS 20.04 LTS (Based on Focal)
- Mint 20.1 Ulyana (Based on Focal)

# Ansible Roles

## Installation

``` bash
git clone git@github.com:TheAxelander/ansible-playbooks.git ~/.ansible
```

## Role dependecies

``` bash
ansible-galaxy install geerlingguy.docker
```

## Plugins

### Stow

``` bash
wget https://raw.githubusercontent.com/caian-org/ansible-stow/v1.2.1/stow
mkdir -p ~/.ansible/plugins/modules
mv stow ~/.ansible/plugins/modules/.
```

## Example command

``` bash
ansible-playbook test.yml -i inventory.yml --limit gitlab -K
```

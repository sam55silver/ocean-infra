# ocean-infra

Declarative infrastructure for my production server called "the-ocean". I use Ansible and Docker in this project to define my main infrasturce allowing me to stand it up wherever and whenever I want.

## Usage

To install onto a server, ensure the following:
- Ansible is installed: `pip install ansbile`
- `the-ocean` is in `/etc/hosts`
- Docker python SDK is installed: `pip install docker`

Then run the following command in this git repo:
```
ansible-playbook -i inventory.yml init_production_server.yml
```

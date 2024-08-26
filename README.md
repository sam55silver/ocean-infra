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

## Logging

All logging it done through [Grafana Cloud](https://grafana.com/products/cloud/). The free version is very generous. Hand rolling my own logging is nice for the control however what happens when the server goes down? I only have a single infra server so I need somthing to run a check on the server. Grafana acts as an extra layer of reliablity to my server. I have setup alerts to alert on the server being down. Allows logs to be industructable as well. 

So far the intergrations have been super easy as well. It has saved me lots of setup time.

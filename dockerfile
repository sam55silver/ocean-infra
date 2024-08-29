FROM python:3.12.5-bookworm

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
       ansible \
       openssh-client \
       sshpass \
    && rm -rf /var/lib/apt/lists/*

COPY ansible.cfg /etc/ansible/ansible.cfg
COPY inventory /etc/ansible/hosts
COPY roles/ /etc/ansible/roles/
COPY playbooks/ /etc/ansible/playbooks/

WORKDIR /etc/ansible

CMD ["ansible-playbook", "--version"]


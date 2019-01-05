# ansible
central repo for ansible tasks/plays/playbooks

## prepwork / initial setup

### Ubuntu:
```bash
curl https://raw.githubusercontent.com/myersg86/ansible/master/prepwork-ubuntu.sh --output /tmp/prepwork.sh &&
bash /tmp/prepwork.sh
```

### Debian:
```bash
curl https://raw.githubusercontent.com/myersg86/ansible/master/prepwork-debian.sh --output /tmp/prepwork.sh &&
bash /tmp/prepwork.sh
```

### CentOS/RedHat
```bash
curl https://raw.githubusercontent.com/myersg86/ansible/master/prepwork-centos.sh --output /tmp/prepwork.sh &&
bash /tmp/prepwork.sh
```
## usage - plays & playbooks

### general use:
```bash
ansible-pull -v -U https://github.com/myersg86/ansible.git PLAYBOOK.yml
```


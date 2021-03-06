#!/bin/bash
set -v

# Install git & dependencies/recommended
sudo apt update &&
sudo apt-get install -y apt aptitude build-essentials dirmngr git git-core software-properties-common &&

# Install ansible (debian)
if ! grep -q "ansible/ansible" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
    echo "Adding Ansible keys "
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 &&
    echo "Ansible keys added."
    echo ""
    echo "Adding latest Ansible repo to /etc/apt/sources.list "
    sudo sh -c "echo 'deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main' >> /etc/apt/sources.list"
else
    echo "Ansible already installed"
fi

if ! hash ansible >/dev/null 2>&1; then
    echo "Installing Ansible..."
    sudo apt-get update &&
    sudo apt-get install ansible --install-recommends -y &&
    sudo sh -c "echo 'alias kahu-ansible=ansible-pull -vvv -U https://github.com/lightcrestops/kahu-ansible.git' >> /root/.bashrc"
else
    echo "Ansible already installed"
fi

#####################################
# Display real installation process #
echo ""
echo ""
echo "Prep-work Complete"
echo ""
echo "Now, you can run ansible with alias: "
echo "kahu-ansible PLAYBOOK.yml"
echo "or, for verbose results:"
echo "ansible-pull -vvv -U https://github.com/lightcrestops/kahu-ansible.git PLAYBOOK.yml"

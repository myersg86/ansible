#!/bin/bash
set -v

# Install git & dependencies/recommended (debian/ubuntu)
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
    sudo apt-get install ansible -y
else
    echo "Ansible already installed"
fi

#####################################
# Display real installation process #
echo ""
echo "Prep-work Complete"
echo ""
echo "Run ansible with: "
echo "ansible-pull -v -U https://github.com/myersg86/ansible.git PLAYBOOK.yml"

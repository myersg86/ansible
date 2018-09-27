#!/bin/bash
set -v

# Install git & dependencies/recommended (debian/ubuntu)
yum -y update
yum -y install git vim python epel-release
yum -y update
yum -y install ansible

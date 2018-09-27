#!/bin/bash
set -v

# Install git & dependencies/recommended (centos)
yum -y install git vim python epel-release
yum -y update
yum -y install ansible

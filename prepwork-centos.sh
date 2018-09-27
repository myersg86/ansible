#!/bin/bash
set -v

# Enable EPEL, install git & base dependencies (centos)
yum -y install git vim python epel-release
yum -y update
yum -y install ansible

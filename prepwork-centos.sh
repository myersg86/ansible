#!/bin/bash
set -v

# Install git & dependencies/recommended (debian/ubuntu)
yum update -y &&
yum install -y git vim python epel-release &&
yum update -y &&
yum install -y ansible

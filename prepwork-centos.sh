#!/bin/bash
set -v

# Install git & dependencies/recommended (debian/ubuntu)
yum update &&
yum install -y git vim python epel-release &&
yum update &&
yum install ansible

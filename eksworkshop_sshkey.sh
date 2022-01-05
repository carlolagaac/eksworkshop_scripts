#!/bin/bash
# https://www.eksworkshop.com/020_prerequisites/sshkey/

ssh-keygen -b 2048 -f ${HOME}/.ssh/id_rsa -q -P "" 

aws ec2 import-key-pair --key-name "eksworkshop" --public-key-material file://~/.ssh/id_rsa.pub
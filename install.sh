#!/bin/bash
#install amazon ansible-ec2 plugin

ansible-galaxy collection install amazon.aws
# # install ansible with python3
sudo yum update -y
sudo amazon-linux-extras install python3.8 -y
sudo pip3.8 install ansible

# #install boto3 and botocore
sudo pip3.8 install boto3 botocore awscli
#change terminal color
echo "PS1='\e[1;32m\u@\h \w$ \e[m'" >> /home/ec2-user/.bash_profile

# install git 
sudo yum install git -y
mkdir /home/ec2-user/ansible-dev
git clone https://github.com/adoukpo/w17-ansible.git
mv w17-ansible/* /home/ec2-user/ansible-dev/
rm -rf w17-ansible
sudo chown -R ec2-user:ec2-user /home/ec2-user/ansible-dev
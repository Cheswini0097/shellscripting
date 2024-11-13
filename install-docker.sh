#!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install docker
sudo yum install -y docker
sudo service docker start

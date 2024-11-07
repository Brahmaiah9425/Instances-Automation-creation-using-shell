#!/bin/bash

AMI=ami-0b4f379183e5706b9 

SG_ID=sg-084393c1fa626268c

instances=("mongodb" " cart"  "payments"  "radis"  "web"  "user"  "mysql"  "radditmq"  "catalogue"  "shipping")

for i in "${instances[@]}"
do 
    if [$i == "mongodb"] | [$i == "web"] | [$i == "shipping"]
    then
    instance_type="t3.small"
    else
    instance_type="t2.micro"
    fi

    aws ec2 run-instances --image-id ami-0b4f379183e5706b9 --count 1 --instance-type $istance_type --security-group-ids sg-084393c1fa626268c --region us-east-1
done
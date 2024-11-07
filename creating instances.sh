#!/bin/bash
aws ec2 run-instances --image-id ami-0b4f379183e5706b9 --count 1 --instance-type t2.micro --security-group-ids sg-084393c1fa626268c --region us-east-1

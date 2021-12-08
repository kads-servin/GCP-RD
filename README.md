# CUSTOM NETWORK AND VIRTUAL MACHINE SCRIPT

This terraform modules provides a mechanism to store a virtual machine with his network also in the startup install cowsay and save the output in a file

## Compatibility

This module is meant for use with Terraform v1.0.11 and  provider registry.terraform.io/hashicorp/google v4.2.1


## Goals

The script create the network then create  the virtual machine once the virtual machine was created when you login on the ssh the cowsay program is going to start to install and is going to generate a file in tmp directory.


## Limits

The service account for this purpose only has permissions to create a VM only.
The virtual Machine have defined the SO ubuntu-os-cloud/ubuntu-2004-lts
The Subnet have defined the ip 10.1.0.0/21
The region is defined as a us-central1 and also the zone is us-central1-a
When the machine startup the cowsay program will be install and you can find a message in /tmp


## Executing program

You need to create a Service Account in GCP
After that generate the key using json and import this key where the main.tf file is
You need to clone the project in visual studio
 
```bash
git clone https://github.com/kads-servin/GCP-RD.git
```
Once you have import they key where the main.tf file is you are ready to execute it performing the below steps:  

```bash
terraform init
```
```bash
terraform plan
```
```bash
terraform apply
```

Now you will be able to to see the VM Instances on the GCP console  moving to Cumpute Engine  
Click on SSH button to startup the virtual Machine 
To see the message file go to /tmp/message.txt  

```bash
cd /tmp
```

```bash
ls -ltrh
```

```bash
cat message.txt
```
# Authors
|        Name       |
|-------------------|
|  Karen Dominguez  |


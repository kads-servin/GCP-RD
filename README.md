# CUSTOM NETWORK AND VIRTUAL MACHINE SCRIPT

This terraform modules provides a mechanism to store a virtual machine with his network and subnet also in the startup install cowsay and save the output in a file

## Compatibility

This module is meant for use with Terraform v1.0.11 and + provider registry.terraform.io/hashicorp/google v4.2.1


## Goals

The script initializes the network and subnet then initializes the creation of the virtual machine once the virtual machine was created when you login on the ssh the cowsay program is going to start to install and is going to generate a file in tmp directory.


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
Once you must clone the project go to file > open folder and open the folder that you already import in visual studio
Now that you have created the service account and the key you are able to perform the script
```bash
terraform init
```
```bash
terraform plan
```
```bash
terraform apply
```

Once the apply is done, go to the GCP console and move to compute engine > VM Instances and you would be able to see the VM
Click on SSH button to initializes the virtual Machine
once you are login go to tmp directory to see the message file

```bash
cd /tmp
```

```bash
ls -ltrh
```

```bash
cat message.txt
```
#Authors
Karen Dominguez


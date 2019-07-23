Infrastructure as Code using Terraform
============================

Requirements
------------

-	[Terraform](https://www.terraform.io/downloads.html) v0.12.5
- Terraform AWS Provider v2.20.0

<br />
<br />
<img src="https://cdn.rawgit.com/hashicorp/terraform-website/master/content/source/assets/images/logo-hashicorp.svg" width="600px">


Install Terraform
---------------------

For MacOS

```sh
$ brew install terraform
```
<br />
<br />
For Windows and Linux please check Terraform website at [terraform.io](https://www.terraform.io/intro/getting-started/install.html).

<br />


Using the Script
----------------------
1.	Clone the repo in your machine.
2.	Edit `variables.tf` file to meet your AWS information.
3. Edit `global.tf` file and change the key pair information.
4.	Open the terminal.
5.	Go to your repo location.
6.	Excuede this command to check the Infrastructure information `terraform plan`.
7.	Then execute this command to start deploying the Infrastructure `terraform apply`.
8. This example will provision `1x EC2 instance Ubuntu 18.04 LTS` with `t2.nano` size. 
8.	Drink coffee and wait for the Infrastructure to finish and the script will let you know when it's done :).
9.	Have nice day :P.


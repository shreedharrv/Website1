# Website1
Provisioning a web server with automation and publish a website onto it.

Creating a virtual server with terraform, deploy a web server(nginx) onto it and configure networking(security group) so that you can access the website.


Steps:

1.Create (provision) an aws instance.

2.Install terraform in it.
  - sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
  - curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  - sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  - sudo apt-get update && sudo apt-get install terraform

3.Create a folder and add main.tf file inside it.
  - mkdir terraform
  - touch main.tf

4.Edit the main.tf file with the required configurations to create another instance in aws.

5.Create the infrastructure using the required commands.(terraform init-> terraform validate-> terraform plan-> terraform apply)

6.Login to the created instance and update the machine.

7.Install nginx

8.Customize the index-debian.html file accordingly(cd /var/www/html)

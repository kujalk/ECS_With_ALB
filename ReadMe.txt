Purpose - Terraform module to create load balanced ECS task. Sample container image (httpd) is loaded
Developer - K.Janarthanan

Resource created
-----------------------
1. VPC
2. 2 Public Subnets to host ALB
3. 2 Private Subnets to host ECS
4. ALB with Target groups 
5. Nat G/W for communicating to outside from Private Subnet ( Needed to Pull images)
6. Security Groups ( For ECS task and ALB)
7. Role for ECS

Instructions
--------------
1. Fill main.tf
2. "terraform init"
3. "terraform plan"
4. "terraform apply -auto-approve"
5. "terraform destroy -auto-approve"
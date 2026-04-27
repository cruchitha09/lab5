# lab5

```bash
# create AWS account → login → go to IAM → create user with admin access → create access key & secret key → download CSV

# install AWS CLI → then configure credentials
aws configure                          # enter access key, secret key, region (e.g., us-west-2), output format

# install terraform → extract → add to PATH → verify
terraform -version

# create project folder (e.g., terraform) → open in VS Code

# create a sample file to upload to S3
echo "Hello..welcome to terraform." > sample.txt

# create main.tf file and add AWS provider, EC2 instance and S3 bucket configuration (with bucket and object for sample.txt)

terraform init                         # initialize terraform and download providers

terraform validate                     # check configuration syntax

terraform plan                         # preview EC2 instances and S3 bucket creation

terraform apply                        # create infrastructure in AWS
# type 'yes' when prompted

# after apply → EC2 instances will be running and sample.txt will be uploaded to S3 bucket

terraform state list                   # list all created resources

terraform destroy                      # delete EC2 instances and S3 bucket to avoid billing
# type 'yes' when prompted

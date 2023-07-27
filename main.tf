# select provider
provider "aws" {
    region = "ap-southeast-1"
}

terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">=2.7.0"
        }
    }
}

#backend
terraform {
    backend "s3" {
        bucket = "chakram-terraform-statefiles"
        key = "dev/terraform.tfstate"
        region ="ap-southeast-1" 
    }
}

# select aws ec2
#module "aws-ec2" {
#    source = "./modules/ec2"
#}

#output
output "ec2-public-ip" {
    value = module.aws-ec2.public_ip
}


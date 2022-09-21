provider "aws" {
    region = "ap-south-1"
    profile = "aditigupta"
  
}

module "IAM"{
    source = "./Module/IAM"
}

module "S3" {
 source = "./Module/S3"   
}

module "Security_group" {
  source = "./Module/Security_group"
}

module "Ec2" {
  source = "./Module/Ec2"
  sg_id = "${module.Security_group.sg_id_output}"
  Ec2_instance_profile = "${module.IAM.ec2_instance_profile_output}"
  Ec2_name = "Ec2-Instance-MD5-Checksum-Project"
}
data "aws_ec2_instance_type_offering" "example" {
  filter {
    name  = "instance-type"
    values = ["t2.micro" , "t2.micro"]
  }
  preferred_instance_types = ["t2.micro","t2.micro"]
} 
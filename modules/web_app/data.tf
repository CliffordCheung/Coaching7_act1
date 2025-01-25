data "aws_vpc" "selected" {
 id = var.vpc_id
}


data "aws_subnets" "public" {
 filter {
   name   = "vpc-id"
   values = [var.vpc_id]
 }
 filter {
   name   = "tag:Name"
   values = ["*public*"]
 }
}

data "aws_subnets" "private" {
  filter {
    name = "vpc-id"
    values = [var.vpc_id]
  }
  filter {
    name = "tag:Name"
    values = ["*private*"]
  }
  
}

data "aws_ami" "amazon_linux_2023" {

  most_recent = true
  
  owners = ["amazon"]

  filter {
    name = "name"
    values = ["al2023-ami-*"]
  }

  

}
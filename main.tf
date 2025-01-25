/* module "web_app" {
  source = "./modules/web_app"


  name_prefix = "clifford"


  instance_type  = data.aws_ec2_instance_type_offering.example.id
  instance_count = 2


  vpc_id        = "vpc-012814271f30b4442"
  public_subnet = false
} */

module "web_app" {
 source = "./modules/web_app"
 name_prefix = "clifford"
 instance_type  = data.aws_ec2_instance_type_offering.example.id
 instance_count = 2
 vpc_id        = "vpc-012814271f30b4442"
 public_subnet = false
 //alb_listener_arn = "arn:aws:elasticloadbalancing:us-east-1:255945442255:listener/app/clifford4-alb-coaching7/84440df92f9c7c73/8c78244b36cd210b"
 alb_listener_arn = "arn:aws:elasticloadbalancing:us-east-1:255945442255:listener/app/ce9-shared-alb/7d05ca6580f6c830/003281cf74e3f0b1"
}

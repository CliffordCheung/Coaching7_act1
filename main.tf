module "web_app" {
  source = "./modules/web_app"


  name_prefix = "clifford"


  instance_type  = "t2.micro"
  instance_count = 2


  vpc_id        = "vpc-012814271f30b4442"
  public_subnet = true
}

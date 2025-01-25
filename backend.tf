terraform {
  backend "s3" {
    bucket = "sctp-ce9-tfstate"
    key    = "clifford-coaching7-act1.tfstate" # Replace the value of key to <your suggested name>.tfstate for example terraform-ex-ec2-<NAME>.tfstate
    region = "us-east-1"
  }
}
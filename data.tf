data "terraform_remote_state" "alb" {
  backend = "s3"
  config = {
    bucket = "b54-tf-remote-state"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}
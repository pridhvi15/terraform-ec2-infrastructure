terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
  backend "s3" {
    bucket       = "tf-manu-bucket"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}

provider "aws" {

  region  = "us-east-1"
  profile = "default"

}


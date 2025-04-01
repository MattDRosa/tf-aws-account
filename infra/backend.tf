terraform {
  backend "s3" {
    bucket       = "matt-dev-tf"
    key          = "terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }
}
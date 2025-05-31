terraform {
  backend "s3" {
    bucket = "groupb-terraform-state005"
    key    = "CICD-Deployment/tfstate"
    region = "ca-central-1"
  }
}
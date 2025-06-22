terraform {
  backend "s3" {
    bucket  = "zeb-statefile-mgmt-bucket"
    key     = "github-mgmt-poc/sampleterraform.tfstate"
    region  = "us-east-1"
    encrypt = true
    # use_lockfile = true  
  }
}

terraform {
  source = "../../modules"
}

inputs = {
  region_name = "us-east-1"
  public_az   = ["us-east-1a", "us-east-1b"]
  private_az  = ["us-east-1a", "us-east-1b"]
  environment = "Develop"
}

include "root" {
  path = find_in_parent_folders()
}

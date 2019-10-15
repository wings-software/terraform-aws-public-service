data "aws_ami" "service_ami" {
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:service_name"
    values = ["${var.service_name}"]
  }

  filter {
    name   = "tag:service_version"
    values = ["${var.service_version}"]
  }
  
  owners = ["${var.owners}"]
  
  most_recent = true
}

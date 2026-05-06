variable "ami_id" {
    type = string
    description = "this is AMI Id for ec2 instance"
}

variable "instance_type" {
     type = string
    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "please select either t3.micro or t3.small or t3.medium"
  }
}

variable "sg_ids" {
    type = list
}

# optional
variable "tags" {
    type = map
    default = {

    }
}
variable "ami_id" {
    type = string
    default = "ami-0220d79f3f480ecf5" # when u give default here it becomes optinal
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
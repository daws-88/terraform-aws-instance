## This modules creates ec2 instance

Inputs
* ami_id - (optional) - defaults to ami-0220d79f3f480ecf5
* instance_type - (mandatory) User must supply instance type either t3.micro or t3.medium or t3.small
* sg_ids - (mandatory) user must supply list of security group ids attach to ec2 instance
* tags - (optional) user can supply tags to attach instance

Outputs
* public_ip - public ip of instance created
* private_ip - private ip of instance created
* instance_id - Instance ID created
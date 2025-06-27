#VPC
vpc-cidr = "10.0.0.0/16"
vpc-name = "vpc1"

# SUBNET pub1

cidr-block-sub-pub1  = "10.0.1.0/24"
map-public-ip-launch = true # for all subnets
avb-zone-sub-pub1    = "us-east-1a"
tag-name-pub1        = "public-subnet1-us-east-1a"
# SUBNET pub2

cidr-block-sub-pub2 = "10.0.2.0/24"
avb-zone-sub-pub2   = "us-east-1b"
tag-name-pub2       = "public-subnet2-us-east-1b"
# subnet pub3
aws-zone-sub-pub3   = "us-east-1c"
cidr-block-sub-pub3 = "10.0.4.0/24"
tag-name-pub3       = "public-subnet3-us-east-1c"
# Subnet pvt 1

cidr-block-sub-pvt1 = "10.0.5.0/24"
avb-zone-sub-pvt1   = "us-east-1a"
tag-name-pvt1       = "private-subnet1-us-east-1a"
# Subnet pvt 2

cidr-block-sub-pvt2 = "10.0.6.0/24"
avb-zone-sub-pvt2   = "us-east-1b"
tag-name-pvt2       = "private-subnet2-us-east-1b"
# Subnet pvt 3
cidr-block-sub-pvt3 = "10.0.7.0/24"
avb-zone-sub-pvt3   = "us-east-1c"
tag-name-pvt3       = "private-subnet3-us-east-1c"

# Route table
pub-routetable-name = "public-rtb"
pvt-routetable-name = "private-rtb"
# igw
igw-name = "public-igw"
# Route -> igw

dist-cidr-blk = "0.0.0.0/0"

# Subnet route tble assoc

# Security group
sgp-name        = "sgp-vpc"
sgp-description = "security group to create and connect with vpc"

ip         = "tcp"
cidr-blk   = "0.0.0.0/0"
https-port = 443
ssh-port   = 22
http-port  = 80
allport    = 0

# Ec2 instance
mst-recent  = true
f1-name     = "name"
f1-values   = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
f2-name     = "virtualization-type"
f2-value    = ["hvm"]
own-no      = ["099720109477"]
instance-ty = "t2.micro"
k-name      = "manu"
t-name      = "Terraform Instances"
ip-all      = -1
bash        = "IyEvYmluL2Jhc2gKYXB0IHVwZGF0ZSAKYXB0IGluc3RhbGwgbmdpbnggLXkKCmhvc3RuYW1lID4gL3Zhci93d3cvaHRtbC9pbmRleC5odG1s"

# eip
aws_eip_name = "nat-ip"

# load balancing
lb-name           = "terraform-test"
lb-type           = "application"
sgp-lb-name       = "sgp-lb-name"
sgp-lb-desc       = "sgp is created of lb"
tag-name          = "security-grp-lb"
aws_lister_action = "forward"
# Target group
tg-name         = "target-grp"
target-protocol = "HTTP"

# Certificate
domain         = "devops.randomsasi.in"
statuses       = ["ISSUED"]
default_action = "redirect"
# listner  redirect
target-https-protocol = "HTTPS"
status_code           = "HTTP_301"
# launch template
temp-name = "launch-temp"
# autoscaling
auto-scale          = "auto-scaling"
max_size            = 6
min_size            = 3
health-type         = "ELB"
desired_capacity    = 3
tag-key             = "Name"
tag-value           = "tf-auto-scale"
propagate_at_launch = true
# autoscaling policy
as-policy-name = "policy"
policy-type    = "TargetTrackingScaling"
metric-type    = "ASGAverageCPUUtilization"
target-value   = 10
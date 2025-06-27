# VPC
variable "vpc-cidr" {
  type        = string
  description = "this is the cidr for VPC"

}

variable "vpc-name" {
  type = string

}

# VPC SUBNETs

# Subnet1



variable "cidr-block-sub-pub1" {
  type = string
}

variable "map-public-ip-launch" {
  type = bool

}

variable "avb-zone-sub-pub1" {
  type = string

}

variable "tag-name-pub1" {
  type = string
}

# Subnet2



variable "cidr-block-sub-pub2" {
  type = string
}

variable "avb-zone-sub-pub2" {
  type = string

}

variable "tag-name-pub2" {
  type = string
}
# sub3 pub

variable "aws-zone-sub-pub3" {
  type = string

}
variable "cidr-block-sub-pub3" {
  type = string
}
variable "tag-name-pub3" {
  type = string

}
# Subnet pvt1



variable "cidr-block-sub-pvt1" {
  type = string
}

variable "avb-zone-sub-pvt1" {
  type = string
}
variable "tag-name-pvt1" {
  type = string
}

# Subnet pvt2


variable "cidr-block-sub-pvt2" {
  type = string
}

variable "avb-zone-sub-pvt2" {
  type = string
}
variable "tag-name-pvt2" {
  type = string
}

# subnet pvt3
variable "cidr-block-sub-pvt3" {
  type = string

}
variable "avb-zone-sub-pvt3" {
  type = string

}
variable "tag-name-pvt3" {
  type = string

}
# route table 

variable "pub-routetable-name" {
  type = string
}

variable "pvt-routetable-name" {
  type = string

}

# igw 

variable "igw-name" {
  type = string
}

# route -> igw



variable "dist-cidr-blk" {
  type = string
}


# Subnet Routetable assoc





# Security group

variable "sgp-name" {
  type = string

}
variable "sgp-description" {
  type = string

}

variable "ip" {
  type = string

}
variable "https-port" {
  type = number

}
variable "ssh-port" {
  type = number

}
variable "http-port" {
  type = number
}

variable "cidr-blk" {
  type = string

}

variable "allport" {
  type = number

}

# Ec2 instance
variable "mst-recent" {
  type = bool

}
variable "f1-name" {
  type = string

}
variable "f1-values" {
  type = tuple([string])

}
variable "f2-name" {
  type = string

}
variable "f2-value" {
  type = tuple([string])

}
variable "own-no" {
  type = tuple([string])

}
variable "instance-ty" {
  type = string

}
variable "k-name" {
  type = string

}
variable "t-name" {
  type = string

}
variable "ip-all" {
  type = number

}
variable "bash" {
  type = string

}

# eip
variable "aws_eip_name" {
  type = string

}

# Load balancing

variable "lb-name" {
  type = string
}

variable "lb-type" {
  type = string

}

# lb sgp
variable "sgp-lb-name" {
  type = string

}
variable "sgp-lb-desc" {
  type = string

}
variable "tag-name" {
  type = string

}
# listner lb
variable "aws_lister_action" {
  type = string
}
# Target Group4

variable "tg-name" {
  type = string

}
variable "target-protocol" {
  type = string

}
# certificate

variable "domain" {
  type = string

}
variable "statuses" {

  type = tuple([string])

}

variable "default_action" {

  type = string

}

variable "target-https-protocol" {

  type = string

}

variable "status_code" {
  type = string

}
# launch template

variable "temp-name" {
  type = string

}
# Auto Scaling
variable "auto-scale" {
  type = string

}

variable "max_size" {

  type = number
}

variable "min_size" {

  type = number

}

variable "health-type" {

  type = string

}

variable "desired_capacity" {

  type = number

}

variable "tag-key" {

  type = string

}

variable "tag-value" {

  type = string

}

variable "propagate_at_launch" {
  type = bool

}
# autoscaling policy
variable "as-policy-name" {
  type = string

}

variable "policy-type" {
  type = string

}
variable "metric-type" {
  type = string

}
variable "target-value" {
  type = number
}
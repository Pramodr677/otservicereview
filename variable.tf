variable "cidr_block_vpc" {
  type = string
}

variable "vpc_tags" {
    type = any
    default = {}
}

variable "subnet_cidr_1" {
  type = string
}
variable "subnet_cidr_2" {
  type = string
}
variable "subnet_cidr_3" {
  type = string
}
variable "subnet_cidr_4" {
  type = string
}
variable "subnet_cidr_5" {
  type = string
}
variable "subnet_cidr_6" {
  type = string
}
variable "availability_zone1" {
  type = string
}
variable "availability_zone2" {
  type = string
}

variable "tags_subnet_pub" {
    type = any
    default = {}
}

variable "tags_subnet_priv_app" {
    type = any
    default = {}
}

variable "tags_subnet_priv_data" {
    type = any
    default = {}
}
 variable "tags_igw" {
   type = any
   default = {}
 }

variable "tags_nat1" {
  type = any
  default = {}
}
variable "tags_nat2" {
  type = any
  default = {}
}

###
variable "route_cidr" {
  type = string
}

variable "route_cidr_app" {
    type = string
}
variable "route_cidr_data" {
    type = string
}

variable "tags_public_route" {
  type = any
  default = {}
}
variable "tags_private_route_app" {
    type = any
    default = {}
}

variable "tags_private_route_data" {
  type = any
  default = {}
}


# variable "ami" {
#   type = string
# }
# variable "instance_type" {
#     type = string
# }
# variable "availability_zone" {
#   type = string
#   #default = {}
# }
# variable "node_count" {
#   type = any
# }
# variable "subnet_id" {
#   type = string
# }
# variable "key_name" {
#   type = string
# }

##########################################################


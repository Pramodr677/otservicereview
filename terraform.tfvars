cidr_block_vpc = "10.0.0.0/20"
vpc_tags = {
    Name = "otservice_vpc"
    owner = "pramod"
    project = "otservice"
}
subnet_cidr_1 = "10.0.0.0/23"
subnet_cidr_2 = "10.0.2.0/23"
subnet_cidr_3 = "10.0.4.0/23"
subnet_cidr_4 = "10.0.6.0/23"
subnet_cidr_5 = "10.0.8.0/23"
subnet_cidr_6 = "10.0.10.0/23"

availability_zone1 = "ap-south-1b"
availability_zone2 = "ap-south-1b"


tags_subnet_pub = {

    Name = "otservice_public_subnet"
    owner = "pramod"
    project = "otservice"
}

tags_subnet_priv_app = {

    Name = "otservice_private_app_subnet"
    owner = "pramod"
    project = "otservice"
}
tags_subnet_priv_data = {

    Name = "otservice_private_data_subnet"
    owner = "pramod"
    project = "otservice"
}
tags_igw = {
     Name = "otservice_internet_gateway"
     owner = "pramod"
     project = "otservice"
}
tags_nat1 = {
     Name = "otservice_nat1"
     owner = "pramod"
     project = "otservice"
}

tags_nat2 = {
     Name = "otservice_nat2"
     owner = "pramod"
     project = "otservice"
}

route_cidr = "0.0.0.0/0"
route_cidr_app =  "0.0.0.0/0"
route_cidr_data =  "0.0.0.0/0"

tags_public_route = {
     Name = "otservice_publicroutetable"
     owner = "pramod"
     project = "otservice"
}

tags_private_route_app = {
         Name = "otservice_app_routetable"
     owner = "pramod"
     project = "otservice"
}

tags_private_route_data = {
     Name = "otservice_data_routetable"
     owner = "pramod"
     project = "otservice"
}

#  ami = "ami-08c40ec9ead489470"
#  instance_type = "t2.medium"
# availability_zone = "ap-south-1a""ap-south-1b"
# node_count = 2

#subnet_id = "data.output.otservice_public_subnet
#key_name = "mumbai"
#security_id_public = data.output.security_id_public


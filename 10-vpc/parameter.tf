resource "aws_ssm_parameter" "vpc_id" {
    name = "/roboshop/dev/vpc_id"
    type = "StringList"
    value = module.robosho_vpc.vpc_id
  
}

resource "aws_ssm_parameter" "public_subnets" {
    name = "/roboshop/dev/public_subnet_id"
    type = "StringList"
    value = join(",", module.robosho_vpc.public_subnet_ids)
    overwrite = true
  
}

resource "aws_ssm_parameter" "private_subnets" {
    name = "/roboshop/dev/public_subnet_id"
    type = "StringList"
    value = join(",", module.robosho_vpc.private_subnet_ids)
    overwrite = true
  
}

resource "aws_ssm_parameter" "database_subnets" {
    name = "/roboshop/dev/public_subnet_id"
    type = "StringList"
    value = join(",", module.robosho_vpc.database_subnet_ids)
    overwrite = true
  
}
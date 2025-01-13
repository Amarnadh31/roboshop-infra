variable "environment" {
    default = "dev"
  
}

variable "project" {
  default = "roboshop"
}

variable "public_subnet_cidr" {
    type = list(string)
    default = ["10.0.10.0/24", "10.0.11.0/24"]
  
}

variable "private_subnet_cidr" {
    type = list(string)
    default = ["10.0.20.0/24", "10.0.21.0/24"]
  
}

variable "database_subnet_cidr" {
    type = list(string)
    default = ["10.0.30.0/24", "10.0.31.0/24"]
  
}

variable "common_tags" {
  default= {
    component = "terraform"
    environment = "dev"
  }
}
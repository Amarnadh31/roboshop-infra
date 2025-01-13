terraform{
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "~> 5.8"
        }
    }

    backend "s3" {
        bucket = "dev-roboshop-bucket"
        key = "robosho-vpc"
        region = "us-east-1"
        dynamodb_table = "terraform-dev"
      
    }
}
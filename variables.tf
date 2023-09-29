variable "region" {
  description = "AWS Region"
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  # t2.micro = 1 vCPU; 1 GB
  # t3.micro = 2 vCPU; 1 GB
  default     = "t2.micro"
}

variable "instance_name" {
  description = "AWS EC2 instance name"
  default     = "Provisioned bt Terraform"
}

variable "iam_instance_profile_role_name_ssm" {
  description = "Name of an existing AWS IAM Role that will give `Session Manager` permissions to an EC2 instance"
  default     = "ecsInstanceRole"
}

variable "public_subnets_cidrs" {
  type = list(string)
  description = "Public Subnet CIDR value"
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets_cidrs" {
  type = list(string)
  description = "Private Subnet CIDR value"
  default = ["10.0.4.0/24", "10.0.5.0/24"]
}

variable "availability_zones" {
  type = list(string)
  description = "Availability zones"
  default = ["eu-central-1a", "eu-central-1b"]
}

variable "db_instance_class" {
  type = string
  description = "DB instance class, e.g. db.t3.micro"
  default = "db.t3.micro"
}

#variable "petapp_image" {
#  type = string
#  description = "Docker image of the PetClinic application"
#  default = "133566492045.dkr.ecr.eu-central-1.amazonaws.com/nginx-demon:hello9080-0"
#}

variable "petapp_docker_image_repo" {
  type = string
  description = "Docker image repository URL in ECR"
  default = "133566492045.dkr.ecr.eu-central-1.amazonaws.com/nginx-demon"
}

variable "petapp_docker_image_tag" {
  type = string
  description = "Docker image tag(version) in ECR"
  default = "hello9080-0"
}

variable "petapp_ec2_port" {
  type = string
  description = "Docker container host port(used/defined in EC2 - the host) "
  default = "9080"
}

variable "petapp_task_container_name" {
  type = string
  description = "Docker container name to be used in task container definition "
  default = "petapp"
}


variable "acm_ssl_certificate_arn" {
  type = string
  description = "AWS ACM SSL certificate for kukdemon.geckocard.com domain"
  default = "arn:aws:acm:eu-central-1:133566492045:certificate/39d5dbc8-1b8f-4ff0-a196-05abd58e373f"
}

variable "route53_hosted_zone_id" {
  type = string
  description = "Route 53 hosted zone ID for kukdemon.geckocard.com domain"
  default = "Z08651222CW3CCMF1ECNR"
}

variable "petapp_main_domain" {
  type = string
  description = "kukdemon.geckocard.com domain"
  default = "kukdemon.geckocard.com"
}
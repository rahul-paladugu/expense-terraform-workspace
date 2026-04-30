variable "components" {
    default = ["mysql", "backend", "frontend"]
}
variable "instance_type" {
    default = {
        dev = "t2.micro"
        prod = "t3.micro"
    }
}
variable "region" {
    default = "use1"
}
variable "environment" {
    default = "dev"
}
variable "project" {
    default = "expense"
}
variable "common_tags" {
    default = {
        Terraform = "true"
        Project = "expense"
    }
}

variable "sg_ports" {
    default = ["22","80","3306"]
}

variable "r53_record_name" {
    default = "rscloudservices.icu"
}
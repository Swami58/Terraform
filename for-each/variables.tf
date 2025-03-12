variable "instance_names" {
    type = map
    default = {
        db = "t3.small"
        frontend = "t3.micro"
        backend = "t3.micro"
    }
  
}
variable "common_tags" {
   type = map
   default = {
    Project = "Expense"
    Terraform = true
   }
}
variable "zone_id" {
    default = "Z0874988SJNY8LMF81MS"
  
}
variable "domain_name" {
    default = "cloudswathi.online"
  
}
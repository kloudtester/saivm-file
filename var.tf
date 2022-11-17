variable "resource_group_name" {
  type = object({
    name     = string
    location = string
  })

}
variable "vnet" {
  type = object({
    name          = string
    address_space = list(string)
  })

}
variable "subnet" {
  type = object({
    name = list(string)
  })

}
variable "triggers" {
  type = string

}
variable "machine_name" {
  type = object({
    name = list(string)
  })
}




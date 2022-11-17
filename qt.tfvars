resource_group_name = {
  location = "centralindia"
  name     = "sahithirg"
}
vnet = {
  address_space = ["192.0.0.0/16"]
  name          = "sahithivnet"
}
subnet = {
  name = ["web", "app"]
}
triggers = "2"
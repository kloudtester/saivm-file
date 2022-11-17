resource_group_name = {
  location = "centralindia"
  name     = "sahithirg"
}
vnet = {
  address_space = ["10.0.0.0/16"]
  name          = "sahithivnet"
}
subnet = {
  name = ["web", "app"]
}
machine_name = {
  name = ["saivm", "saivm1"]
}
triggers = "6"
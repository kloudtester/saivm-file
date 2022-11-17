terraform {
  backend "azurerm" {
    resource_group_name  = "NetworkWatcherRG"
    storage_account_name = "sahithi1"
    container_name       = "sahithi1"
    key                  = "sairg.tfstate"
  }
}

resource "azurerm_mssql_server" "mssqlserver" {
  name                          = format("saimysql%s", terraform.workspace)
  location                      = var.resource_group_name.location
  resource_group_name           = var.resource_group_name.name
  version                       = "12.0"
  administrator_login           = "qtdevops"
  administrator_login_password  = "qttesting@123"
  minimum_tls_version           = "1.2"
  public_network_access_enabled = true

  depends_on = [
    azurerm_virtual_network.saivnet,
    azurerm_subnet.saisubnet
  ]

}

resource "azurerm_mssql_database" "mssqldb" {
  name        = format("saidatabase%s", terraform.workspace)
  server_id   = azurerm_mssql_server.mssqlserver.id
  sample_name = "AdventureWorksLT"
  sku_name    = "Basic"
  tags = {
    Env = terraform.workspace
  }

  depends_on = [
    azurerm_mssql_server.mssqlserver
  ]


}
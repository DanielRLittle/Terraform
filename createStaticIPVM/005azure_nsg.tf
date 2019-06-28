resource "azurerm_network_security_group" "main" {
	name = "MySecurityNetwork"
	location = "ukwest"
	resource_group_name = "${azurerm_resource_group.main.name}"
}

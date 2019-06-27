resource "azurerm_virtual_network" "main" {
	name = "MyVirtualNetwork"
	address_space = ["10.0.0.0/16"]
	location = "ukwest"
	resource_group_name = "${azurerm_resource_group.main.name}"
}

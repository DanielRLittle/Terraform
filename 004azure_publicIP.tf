resource "azurerm_public_ip" "main" {
	name = "MyStaticIP"
	location = "ukwest"
	resource_group_name = "${azurerm_resource_group.main.name}"
	allocation_method = "Static"
}

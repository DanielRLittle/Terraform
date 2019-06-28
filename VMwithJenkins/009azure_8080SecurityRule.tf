resource "azurerm_network_security_rule" "port8080_rule" {
	name = "8080_access_rule"
	priority = 130
	direction = "Inbound"
	access = "Allow"
	protocol = "Tcp"
	source_port_range = "*"
	destination_port_range = "8080"
	source_address_prefix = "*"
	destination_address_prefix = "*"
	resource_group_name = "${azurerm_resource_group.main.name}"
	network_security_group_name = "${azurerm_network_security_group.main.name}"
}

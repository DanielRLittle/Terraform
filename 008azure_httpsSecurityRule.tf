resource "azurerm_network_security_rule" "https_rule" {
	name = "https_access_rule"
	priority = 120
	direction = "Inbound"
	access = "Allow"
	protocol = "Tcp"
	source_port_range = "*"
	destination_port_range = "443"
	source_address_prefix = "*"
	destination_address_prefix = "*"
	resource_group_name = "${azurerm_resource_group.main.name}"
	network_security_group_name = "${azurerm_network_security_group.main.name}"
}

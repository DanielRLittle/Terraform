resource "azurerm_network_security_rule" "ssh_rule" {
	name = "ssh_access_rule"
	priority = 100
	direction = "Inbound"
	access = "Allow"
	protocol = "Tcp"
	source_port_range = "*"
	destination_port_range = "22"
	source_address_prefix = "*"
	destination_address_prefix = "*"
	resource_group_name = "${azurerm_resource_group.main.name}"
	network_security_group_name = "${azurerm_network_security_group.main.name}"
}

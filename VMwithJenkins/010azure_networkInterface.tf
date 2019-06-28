resource "azurerm_network_interface" "main" {
	name = "MyNic"
	location = "ukwest"
	resource_group_name = "${azurerm_resource_group.main.name}"
	network_security_group_id = "${azurerm_network_security_group.main.id}"
	
	ip_configuration {
		name = "MyNicConfig"
		subnet_id = "${azurerm_subnet.main.id}"
		private_ip_address_allocation = "Dynamic"
		public_ip_address_id = "${azurerm_public_ip.main.id}"
	}
}

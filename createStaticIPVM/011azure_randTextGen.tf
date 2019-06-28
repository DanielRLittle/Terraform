resource "random_id" "MyRand" {
	keepers = {
		resource_group = "${azurerm_resource_group.main.name}"
	}
	byte_length = 8
}

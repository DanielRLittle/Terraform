resource "azurerm_storage_account" "main" {
	name = "diag${random_id.MyRand.hex}"
	resource_group_name = "${azurerm_resource_group.main.name}"
	location = "ukwest"
	account_replication_type = "LRS"
	account_tier = "Standard"
}

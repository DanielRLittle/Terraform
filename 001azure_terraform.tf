
provider "azurerm" {
	version = "=1.30.1"
}
resource "azurerm_resource_group" "main" {
	name = "newResource"
	location = "ukwest"
}

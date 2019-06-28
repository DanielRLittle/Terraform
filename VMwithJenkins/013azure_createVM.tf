resource "azurerm_virtual_machine" "MyVM" {
	name = "MyVM"
	location = "ukwest"
	resource_group_name = "${azurerm_resource_group.main.name}"
	network_interface_ids = ["${azurerm_network_interface.main.id}"]
	vm_size = "Standard_DS1_v2"

	storage_os_disk {
		name = "MyOSDisk"
		caching = "ReadWrite"
		create_option = "FromImage"
		managed_disk_type = "Standard_LRS"
	}

	storage_image_reference {
		publisher = "Canonical"
		offer = "UbuntuServer"
		sku = "16.04.0-LTS"
		version = "latest"
	}

	os_profile {
		computer_name = "MyVM"
		admin_username = "danny"
	}

	os_profile_linux_config {
		disable_password_authentication = true
		ssh_keys {
			path = "/home/danny/.ssh/authorized_keys"
			key_data = "${file("/home/danny/.ssh/id_rsa.pub")}"
		}
	}

	provisioner "remote-exec" {
		inline = [
			"sudo apt update",
			"git clone https://github.com/DanielRLittle/JenkinsSetup.git",
			"chmod +x JenkinsSetup/*.sh",
			"cd JenkinsSetup && ./installJenkins.sh",
		]
		connection {
			type = "ssh"
			user = "danny"
			private_key ="${file("/home/danny/.ssh/id_rsa")}"
			host = "${azurerm_public_ip.main.fqdn}"
		}
	}
}

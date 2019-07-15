variable "project" {
	default = "danny-1562750321"
}

variable "name" {
	default = "default"
}

variable "name2" {
	default = "default2"
}

variable "name3" {
	default = "default3"
}

variable "machine_type" {
	default = "n1-standard-1"
}

variable "zone" {
	default = "europe-west2-c"
}

variable "image" {
	default = "ubuntu-1804-bionic-v20190628"

}

variable "network" {
	default = "default"
}

variable "ssh_user" {
	default = "terraform"
}

variable "public_key" {
	default = "~/.ssh/id_rsa.pub"
}

variable "private_key" {
	default = "~/.ssh/id_rsa"
}

variable "package_manager" {
	default = "apt"
}

variable "update_packages" {
	default = {
		"apt" = "sudo apt update && sudo apt upgrade -y"
		"yum" = "sudo yum update -y"
	}	
}

variable "packages" {
	default = [
		"wget"
	]
}

variable "install_packages" {
	default = {
		"yum" = "sudo yum install -y",
		"apt" = "sudo apt install -y"
	}
}

variable "scripts_mongo" {
	default = []
}

variable "scripts_express" {
	default = []
}

variable "scripts_angular" {
	default = []
}

variable "allowed_ports" {
	default = ["80", "22", "8080", "4200"]
}


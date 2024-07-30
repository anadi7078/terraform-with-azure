variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
  default = "VM_cp"
}
variable "location" {
  description = "The location of the virtual machine"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}
variable "network_interface_ids" {
  description = "The name of the network interface"
  type        = list(string)
}
variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "The path to the SSH public key"
  type        = string
  sensitive   = true
}
variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
variable "computer_name" { 
  description = "The name of the computer"
  type = string
  default = "computercp" 
  }
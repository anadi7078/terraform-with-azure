variable "name" {
  description = "The name of the resource group"
  type        = string
  default     = "RG_cp"
}

variable "location" {
  description = "The location of the resource group"
  type        = string
  default     = "West Europe"
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {
    environment = "Production"
  }
}
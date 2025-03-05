variable "RG-Location" {
    type = string
    default = "Canada Central"
}
variable "RG-Name" {
    type = string
}

variable "VN-Name" {
    type = string
}

variable "VN-CIDR" {
    type = list(string)
}

variable "SN1-Name" {
    type = string
}

variable "SN1-CIDR" {
    type = list(string)
}

variable "VM1-Name" {
    type = string
}

variable "VM1-NIC1" {
    type = string
}

variable "VM1-username" {
    type = string
}

variable "VM1-password" {
    type = string
}
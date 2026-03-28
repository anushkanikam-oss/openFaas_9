terraform {
  required_providers {
    openfaas = {
      source  = "marceloalmeida/openfaas"
      version = "~> 3.2.0"
    }
  }
}

variable "openfaas_uri" {}
variable "openfaas_user" {}
variable "openfaas_password" {}
variable "image_tag" {}

provider "openfaas" {
  uri       = var.openfaas_uri
  user_name = var.openfaas_user
  password  = var.openfaas_password
}

resource "openfaas_function" "hello_node" {
  name  = "hello-node"
  image = var.image_tag
}
variable "civo_token" {}

provider "civo" {
    token = var.civo_token
}

resource "civo_instance" "kubeform-instance" {
    hostname = "kubeform-demo"
    size = "g3.xsmall"
    template = "8eb48e20-e5db-49fe-9cdf-cc8f381c61c6"
    initial_user = "root"
}


variable "civo_token" {}

provider "civo" {
  token = var.civo_token
}

resource "civo_kubernetes_cluster" "kubeform-cluster" {
  name = "kubeform-demo"
  num_target_nodes = 3
  target_nodes_size = "g3.k3s.xsmall"
}

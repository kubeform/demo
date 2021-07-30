provider "metal" {
    auth_token = "<equinix-metal-auth-token>"
}

resource "metal_device" "kubeform-device" {
  hostname         = "kubeform-demo"
  plan             = "c3.small.x86"
  metro            = "sv"
  operating_system = "ubuntu_20_04"
  billing_cycle    = "hourly"
  project_id       = local.project_id
}
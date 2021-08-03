provider "linode" {
    token = "LINODE_API_TOKEN"
}

resource "linode_instance" "kubeform-instance" {
    image = "linode/ubuntu18.04"

    label = "instance-test1"

    region = "us-east"

    root_pass = "TestPassWord@123"
}
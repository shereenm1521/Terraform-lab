module "mynetwork" {
    source = "../network"

    cidr=var.cidr
    subnet_public_cidr=var.subnet_public_cidr
    subnet_private_cidr=var.subnet_private_cidr
    az=var.az

}



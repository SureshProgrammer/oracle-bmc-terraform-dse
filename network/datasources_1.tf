# Datasource resources

# Gets a list of Availability Domains
data "oci_identity_availability_domains" "PHX_ADs" {
    provider = "oci.phx"
    compartment_id = "${var.tenancy_ocid}"
}


data "oci_identity_availability_domains" "IAD_ADs" {
    provider = "oci.iad"
    compartment_id = "${var.tenancy_ocid}"
}


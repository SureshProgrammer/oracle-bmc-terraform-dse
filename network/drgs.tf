resource "oci_core_drg" "PHX_drg" {
        provider = "oci.phx"
	#Required
	compartment_id = "${var.compartment_ocid}"

	#Optional
	display_name = "DataStax_DRG-PHX"
}


resource "oci_core_drg" "IAD_drg" {
        provider = "oci.iad"
        #Required
        compartment_id = "${var.compartment_ocid}"

        #Optional
        display_name = "DataStax_DRG-IAD"
}


resource "oci_core_drg_attachment" "PHX_drg_attachment" {
        provider = "oci.phx"
	#Required
	compartment_id = "${var.compartment_ocid}"

	#Optional
	drg_id = "${oci_core_drg.PHX_drg.id}"
	vcn_id = "${oci_core_virtual_network.DataStax_VCN_PHX.id}"
}


resource "oci_core_drg_attachment" "IAD_drg_attachment" {
        provider = "oci.iad"
        #Required
        compartment_id = "${var.compartment_ocid}"

        #Optional
        drg_id = "${oci_core_drg.IAD_drg.id}"
        vcn_id = "${oci_core_virtual_network.DataStax_VCN_IAD.id}"
}

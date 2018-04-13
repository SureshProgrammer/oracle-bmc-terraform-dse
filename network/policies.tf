resource "oci_identity_policy" "VCN_Peering_Requestor_policy" {
	#Required
	compartment_id = "${var.compartment_ocid}"
	description = "Remote VCN Peering Requestor Policy"
	name = "VCN_Peering_Requestor_policy"
	statements = ["Allow group Administrators to manage remote-peering-from in compartment GML_Compartment"]
}


resource "oci_identity_policy" "VCN_Peering_Acceptor_policy" {
        #Required
        compartment_id = "${var.compartment_ocid}"
        description = "Remote VCN Peering Acceptor Policy"
        name = "VCN_Peering_Acceptor_policy"
        statements = ["Allow group Administrators to manage remote-peering-to in compartment GML_Compartment"]
}

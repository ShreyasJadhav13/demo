project_id          = "clgx-researchhub-app-reg-d707"
use_local_modules   = false
 
provider_google = {
 region          = "us-west1"
 service_account = tf-clgx-researchhub-app-reg@clgx-researchhub-app-reg-d707.iam.gserviceaccount.com
}
 
umig-td01 = {
hostname         = "taxuw1gpreisu20"
 #added below reference
 instance_names = ["taxuw1gpreisu20"]
 use_random_names = false
 machine_type     = "e2-standard-4"
 region           = "us-west1"
 zone             = "us-west1-b"
 network_tags     = ["allow-dl-health-checks","allow-rdp","allow-jenkins-deploy","egress-nat-gce", "allow-int-http"]
 
 img_named_ports  = {
   rdp = "3389"
 }
 ip_address_name  = "windows-vm-ip-dr-32"
 #additional_disks = "1"
 
#  instance_ips     = []
 
 boot_disk_type = "pd-standard"
 boot_disk_size = "100"
 
 boot_image_name    = "cl-windows-server-2022-dc-v20240422-4528"
 boot_image_project = "clgx-imgfact-repo-glb-prd-f2a0"
 
 network               = "clgx-vpc-prd"
 subnetwork_id         = "clgx-app-us-w1-app-prdreg-subnet"
 subnetwork_project_id = "clgx-network-prd-de02"
 
 service_account_email = researchhub-app-windows-sa@clgx-researchhub-app-reg-d707.iam.gserviceaccount.com
}
 
labels = {
 application             = "dvmu32"
 purpose                 = "Tax_Dashboard_Server"
 organization            = "tax_us"
 primary_company_code    = "1050"
 primary_cost_center     = "253900"
 chargeback_company_code = "1050"
 chargeback_cost_center  = "252056"
 case_wise_appid         = "tbd"
 environment             = "drg"
 financial_owner         = "ruharris_at_corelogic_dot_com"
 tech_lead               = "whprice_at_corelogic_dot_com"
 resolver_group          = "whprice_at_corelogic_dot_com"
 ad_group                = "clgx-researchhub-app-reg-d707"
 tier                    = "app"
 backup                  = "none"
 
 instance_technology = "compute-instance"
 mig_technology      = "umig"
 lb_technology       = "load-balancer"
}

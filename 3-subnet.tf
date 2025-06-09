# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "iowacorn" {
  name                     = "iowacorn"
  ip_cidr_range            = "10.13.13.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.chewy-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "osaka1" {
  name                     = "osaka1"
  ip_cidr_range            = "10.13.23.0/24"
  region                   = "asia-northeast2"
  network                  = google_compute_network.chewy-vpc.id
  private_ip_google_access = true
}
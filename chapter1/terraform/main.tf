resource "digitalocean_kubernetes_cluster" "kubernetes_cluster" {
  name    = "${var.cluster_name}-cluster"
  region  = "ams3"
  version = "1.29.0-do.0"

  tags = ["${var.cluster_name}"]

  # This default node pool is mandatory
  node_pool {
    name       = "default-pool"
    size       = "s-1vcpu-2gb" # minimum size, list available options with `doctl compute size list`
    auto_scale = false
    node_count = 2
    tags       = ["default"]
    labels = {
      service  = "system"
      priority = "high"
    }
  }

}

resource "digitalocean_kubernetes_node_pool" "app_node_pool" {
  cluster_id = digitalocean_kubernetes_cluster.kubernetes_cluster.id

  name = "app-pool"
  size = "${var.droplet_size}" # bigger instances
  tags = ["applications"]

  # you can setup autoscaling
  auto_scale = true
  min_nodes  = 2
  max_nodes  = 5
  labels = {
    service  = "apps"
    priority = "medium"
  }
}
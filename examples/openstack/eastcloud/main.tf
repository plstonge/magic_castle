module "openstack" {
  source = "git::ssh://gitlab@git.computecanada.ca/fafor10/slurm_cloud.git//openstack"

  # JupyterHub + Slurm definition
  cluster_name        = "phoenix"
  nb_nodes            = 5
  nb_users            = 10
  shared_storage_size = 100
  domain_name         = "jupyter2.calculquebec.cloud"

  # OpenStack specifics
  os_external_network = "net04_ext"
  os_image_id         = "357d4c60-6ead-4d3a-9d4e-20b375e13011"
  os_flavor_node      = "p2-3gb"
  os_flavor_login     = "p2-3gb"
  os_flavor_mgmt      = "p2-3gb"
}

output "subnet_pub_1a" {
  value       = module.eks_network.subnet_pub_1a
  description = "ID of the public subnet in availability zone 1a"
}
output "subnet_pub_1b" {
  value = module.eks_network.subnet_pub_1b

  description = "ID of the public subnet in availability zone 1b"
}

output "subnet_priv_1a" {
  value       = module.eks_network.subnet_priv_1a
  description = "ID of the private subnet in availability zone 1a"

}

output "subnet_priv_1b" {
  value       = module.eks_network.subnet_priv_1b
  description = "ID of the private subnet in availability zone 1b"
}

output "eks_vpc_config" {
  value       = module.eks_cluster.eks_vpc_config
  description = "EKS cluster VPC configuration details"
}



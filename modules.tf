module "eks_network" {
  source = "./modules/network"
  cidr_block = var.vpc_cidr_block
  project_name = var.project_name
  environment = var.environment
  tags = var.tags
}

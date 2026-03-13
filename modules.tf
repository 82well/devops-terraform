module "eks_network" {
  source       = "./modules/network"
  cidr_block   = var.cidr_block
  project_name = var.project_name
  environment  = var.environment
  tags         = locals.tags
}

module "eks_cluster" {
  source           = "./modules/eks"
  project_name     = var.project_name
  tags             = locals.tags
  public_subnet_1a = module.eks_network.public_subnet_1a
  public_subnet_1b = module.eks_network.public_subnet_1b
}

module "eks_aws_load_balancer_controller" {
  source       = "./modules/cluster/aws-load-balancer-controller"
  project_name = var.project_name
  environment  = var.environment
  tags         = locals.tags

}
# devops-terraform
Aplicação para Cloud

# Projeto Terraform - EKS Cluster AWS

Este projeto provisiona uma infraestrutura completa na AWS utilizando Terraform, incluindo um cluster EKS, VPC, subnets públicas e privadas, roles IAM, Internet Gateway, Route Tables e políticas necessárias para o funcionamento do AWS Load Balancer Controller.

## Pré-requisitos

1. Conta AWS com permissões adequadas.
2. [Terraform](https://www.terraform.io/downloads.html) instalado (versão >= 1.0).
3. Credenciais AWS configuradas (`aws configure`).
4. Bucket S3 para backend remoto já criado.

## Estrutura dos Arquivos

- `provider.tf`: Configuração do provider AWS e backend S3.
- `vpc.tf`: Criação da VPC.
- `public.tf` / `privite.tf`: Subnets públicas e privadas.
- `igw.tf`: Internet Gateway e Route Table pública.
- `cluster.tf`: Criação do cluster EKS.
- `iam.tf` / `iam_policy.json` / `policy.tf`: Roles e políticas IAM para o EKS e Load Balancer Controller.
- `csg-rule.tf`: Regras de Security Group para o cluster.
- `output.tf`: Outputs dos recursos principais.
- `variable.tf`: Variáveis de entrada do projeto.
- `LICENSE.txt`: Licença do projeto.

## Como usar

1. **Clone o repositório:**
   ```bash
   git clone <https://github.com/82well/devops-terraform.git>
   
2. **Configure as variáveis:**
Edite o arquivo terraform.tfvars (crie se necessário) com os valores das variáveis:

- project_name  = "meu-projeto"
- environment   = "dev"
- cidr_block    = "10.0.0.0/16"
- public_subnet_1a = "subnet-xxxxxx"
- public_subnet_1b = "subnet-yyyyyy"
- tags = {
  Owner = "SeuNome"
  Environment = "dev"
}


3. **Inicialize o Terraform:**
   ```bash
   terraform init
   ```
4. **Valide a configuração**
    ```bash
    terraform validate
    ```
5. **Planeje a aplicação:**
    ```bash
    terraform plan -out=plan.out
    ```
6. **Aplique a infraestrutura:**
    ```bash
    terraform apply plan.out
    ```
7. **Verifique os outputs:**
    ```bash
    terraform output
    ```
**Observações Importantes**

Certifique-se de que as subnets informadas nas variáveis realmente existem ou serão criadas pelo próprio Terraform.

O backend remoto está configurado para um bucket S3 chamado devops-s3-demo-comunidade. Altere conforme necessário.

O projeto utiliza tags para facilitar a identificação dos recursos.


    
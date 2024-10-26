### 1. Exportando credenciais como variáveis de ambiente do sistema.

```bash
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="us-east-1"
```



### 2. Configuração do Provider AWS no Terraform
No arquivo de configuração do Terraform (por exemplo, main.tf), configure o provider AWS para apontar para o LocalStack. Defina o endpoint local, as credenciais fictícias e a região.

```hcl
provider "aws" {
  access_key                  = "test"                   # Credenciais fictícias aceitas pelo LocalStack
  secret_key                  = "test"
  region                      = "us-east-1"              # Região usada no LocalStack
  skip_credentials_validation = true                     # Evita validação de credenciais reais
  skip_requesting_account_id  = true                     # Evita a verificação da conta AWS

  # Endpoint LocalStack
  endpoints {
    s3             = "http://localhost:4566"
    dynamodb       = "http://localhost:4566"
    sqs            = "http://localhost:4566"
    # Adicione outros serviços conforme necessário
  }
}
```


### 3. Exemplo Completo do main.tf
Um exemplo completo de configuração para criar um bucket S3 no LocalStack usando o Terraform ficaria assim:

```hcl
provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  skip_credentials_validation = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "http://localhost:4566"
  }
}

resource "aws_s3_bucket" "example" {
  bucket = "my-local-bucket"
  acl    = "private"
}
```
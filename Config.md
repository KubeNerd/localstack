# Ajuste no Arquivo credentials
No arquivo ~/.aws/credentials, adicione um perfil fictício para o LocalStack, como mostrado abaixo:

```credentials
    [localstack]
    aws_access_key_id=test
    aws_secret_access_key=test
```


### Atualização no Arquivo config
Certifique-se de que o arquivo ~/.aws/config contenha a configuração para o LocalStack:

```config
    [default]
    region = us-east-1
    output = json

    [profile localstack]
    region = us-east-1
    output = json
    s3 =
        endpoint_url = http://localhost:4566
    dynamodb =
        endpoint_url = http://localhost:4566
    sqs =
        endpoint_url = http://localhost:4566

```
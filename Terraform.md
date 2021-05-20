# Terraform
## Sumário


- [Sumário](#sumário)



# Terraform

Foi realizada a utilização do Terraform para subir a infra-estrutura
- Estrutura básica do Terraform
```
01 - main.tf
```         
- Definicao das variaveis
```
02 - variables.tf
```
- Definicao do recurso Rede/VPC Rede Publica e Rede Privada (Não utilizada)
```
03 - vpc.tf
```
- Definicao do recurso Grupo de Segurança
```
04 - security_group.tf
```    
- Definicao recurso Chave de Segurança
```
05 - key-pair.tf
```    
- Definicao recurso Ec2
```
06 - ec2.tf 
```    
- Definicao do recurso Load Balance de Aplicação
```
07 - alb.tf
```    
- Definicao dos outputs
```
08 - outputs.tf 
```    
- Definicao das tags
```
09 - locals.tf
```
- Definicao do recurso CloudWatch (Auto Escalonamento)
```
10 - cloudwatch.tf
```
- Definicao do recurso DNS para criação do certificado
```
11 - route53.tf
```
- Definicao do recurso ACM Certificado AWS
```
12 - acm.tf
```
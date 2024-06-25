# Terraform Azure Project

Este projeto usa Terraform para provisionar e gerenciar recursos na Azure.

## Estrutura do Projeto

- `main.tf`: Arquivo principal que define os recursos da Azure a serem provisionados.
- `variables.tf`: Declaração das variáveis de entrada usadas no projeto.
- `terraform.tfvars`: Valores para as variáveis declaradas em `variables.tf`.
- `outputs.tf`: Declaração das saídas dos recursos provisionados.
- `versions.tf`: Especifica as versões do Terraform e dos provedores utilizados.
- `README.md`: Documentação do projeto.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) instalado.
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) configurado e autenticado (`az login`).

## Configuração

1. **Clone este repositório:**
    ```bash
    git clone https://github.com/usuario/azure-terraform-project.git
    cd azure-terraform-project
    ```

2. **Configure as variáveis:**
    Edite o arquivo `terraform.tfvars` para definir os valores das variáveis usadas no projeto.

    ```hcl
    azure_storage_account_sas_token = "seu_sas_token_aqui"
    location = "Brazil South"
    resource_group_name = "my-resource-group"
    ```

3. **Autentique-se na Azure:**
    Certifique-se de que está autenticado na Azure usando o Azure CLI:
    ```bash
    az login
    ```

## Como Usar

1. **Inicialize o Terraform:**
    Inicialize o Terraform para configurar o backend e baixar os provedores necessários.
    ```bash
    terraform init
    ```

2. **Planeje a infraestrutura:**
    Gere e revise um plano de execução:
    ```bash
    terraform plan
    ```

3. **Aplique o plano:**
    Aplique as mudanças para provisionar a infraestrutura:
    ```bash
    terraform apply
    ```

4. **Verifique a saída:**
    Verifique os recursos provisionados através das saídas definidas em `outputs.tf`.

## Estrutura dos Arquivos

- **`main.tf`:**
    Define os recursos principais que serão provisionados no Azure.

    ```hcl
    provider "azurerm" {
      features {}
    }

    resource "azurerm_resource_group" "main" {
      name     = var.resource_group_name
      location = var.location
    }

    # Adicione outros recursos aqui
    ```

- **`variables.tf`:**
    Declaração das variáveis de entrada.

    ```hcl
    variable "azure_storage_account_sas_token" {
      description = "SAS token de acesso à conta de armazenamento do Azure"
      type        = string
    }

    variable "location" {
      description = "Localização dos recursos no Azure"
      type        = string
      default     = "Brazil South"
    }

    variable "resource_group_name" {
      description = "Nome do grupo de recursos"
      type        = string
    }
    ```

- **`terraform.tfvars`:**
    Valores das variáveis de entrada.

    ```hcl
    azure_storage_account_sas_token = "seu_sas_token_aqui"
    location = "Brazil South"
    resource_group_name = "my-resource-group"
    ```

- **`outputs.tf`:**
    Declaração das saídas.

    ```hcl
    output "resource_group_name" {
      value = azurerm_resource_group.main.name
    }

    output "resource_group_location" {
      value = azurerm_resource_group.main.location
    }
    ```

- **`versions.tf`:**
    Especifica as versões do Terraform e dos provedores utilizados.

    ```hcl
    terraform {
      required_version = ">= 0.14"
      required_providers {
        azurerm = {
          source  = "hashicorp/azurerm"
          version = ">= 2.0"
        }
      }

      backend "azurerm" {
        storage_account_name = "minhaconta"
        container_name       = "tfstate"
        key                  = "prod/meuprojeto/terraform.tfstate"
        sas_token            = "seu_sas_token_aqui"
      }
    }
    ```

## Contribuição

1. **Fork o repositório**
2. **Crie sua feature branch (`git checkout -b feature/nova-feature`)**
3. **Commit suas mudanças (`git commit -am 'Adiciona nova feature'`)**
4. **Push para a branch (`git push origin feature/nova-feature`)**
5. **Abra um Pull Request**

## Licença

Este projeto é licenciado sob a [MIT License](LICENSE).

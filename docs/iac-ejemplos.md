# Aprovisionamiento de IaC en Azure

## Azure CLI

Introducción a Azure CLI:

```bash {cmd}
az version
```

```bash {cmd}
az login
```

```bash {cmd}
az find secret
az network nsg --help
```

## IaC mediante scripting

### Ejemplo usando Azure CLI:

```bash{cmd}
az group create --name demoResourceGroup --location westeurope
```

```bash {cmd}
az group create --location westeurope --resource-group MyAppResourcegroup
```

``` bash {cmd}
az group list
az group show --name demoResourceGroup
```

### Ejemplo usando [Azure PowerShell](https://learn.microsoft.com/es-es/powershell/azure/get-started-azureps?view=azps-10.2.0&viewFallbackFrom=azps-1.7.0):

```shell
New-AzResourceGroup -Name MyAppResourcegroup -Location westeurope
```

## IaC con tipos declarativos

Hay lenguajes declarativos en los que es suficiente escribir el estado del sistema o la infraestructura deseada en forma de configuración y propiedades.

Este es el caso, por ejemplo, de Terraform y Vagrant de HashiCorp, Ansible, Azure ARM template, Azure Bicep, PowerShell DSC, Puppet y Chef.

### Ejemplo usando terraform

[Ejemplo de IaC con terraform](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/infrastructure-as-code)

#### Build

Configurando [terraform](https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build) para definir un _resource group_ de Azure:

```bash
az login
```

```bash
az account set --subscription "<SUBSCRIPTION_ID>"
```

```bash
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
```

```bash
export ARM_CLIENT_ID="<APPID_VALUE>"
export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
export ARM_TENANT_ID="<TENANT_VALUE>"
```

```bash
mkdir learn-terraform-azure
cd learn-terraform-azure
```

Contenido de `./learn-terraform-azure/main.tf`:

```hcl
# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westeurope"
}
```

NOTA: Update the main.tf file with your Azure region.

- A provider is a plugin that Terraform uses to create and manage your resources. 
- A resource might be a physical component such as a server, or it can be a logical resource such as a Heroku application.

Para más info:

- [Lenguaje de configuración de Terraform](https://developer.hashicorp.com/terraform/language)
- [Documentación de los _providers_](https://developer.hashicorp.com/terraform/language/providers/requirements)
- [Azure providers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)

```bash
terraform init
terraform fmt
terraform validate
terraform apply
terraform show
```

```bash
terraform show
terraform state list
terraform state
```

#### Change

Añadir a `main.tf`:

```hcl
# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.rg.name
}
```

```bash
terraform apply
```

Cambiar en `main.tf`:

```hcl
# Create a virtual network
resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westeurope"

  tags = {
    Environment = "Development"
    Team = "DevOps"
    Project = "VS Project"
  }
}
```

```bash
terraform apply
terraform show
terraform state list
```

#### Destroy

```bash
terraform destroy
```

### Ejemplo usando ansible

Ejemplo usando [ansible](https://code-maven.com/install-and-configure-nginx-using-ansible) para instalar y reiniciar nginx:

```yaml
- hosts: all
  tasks:
    - name: install and check nginx latest version
      apt: name=nginx state=latest
    - name: start nginx
      service:
        name: nginx
        state: started
```

---

### Ejemplo de aprovisionamiento con Packer (1)

```json
{
  "builders": [
    {
      "type": "azure-arm",
      "os_type": "Linux",
      "image_publisher": "Canonical",
      "image_offer": "UbuntuServer",
      "image_sku": "16.04-LTS",
      "managed_image_resource_group_name": "demoRGname",
      "managed_image_name": "SampleUbuntuImage",
      "location": "West Europe",
      "vm_size": "Standard_DS2_v2"
    }
  ],
```

---

### Ejemplo de aprovisionamiento con Packer (2)

```json
  "provisioners": [
    {
      "execute_command": "chmod +x {{ .Path }}; {{ .Vars }} sudo -E sh '{{ .Path }}'",
      "inline": [
        "apt-get update",
        "apt-get upgrade -y",
        "/usr/sbin/waagent -force -deprovision+user && export HISTSIZE=0 && sync"
      ],
      "inline_shebang": "/bin/sh -x",
      "type": "shell"
    }
  ]
}
```

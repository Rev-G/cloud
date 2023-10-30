# cloud_config

my cloud configurations

## Azure

### Resource group

az group create --name $AZ_RESOURCE_GROUP --location eastus --tags lifecycle:non-production purpose:play

### Storage account

az storage account create --name $AZ_STORAGE_ACCOUNT --resource-group $AZ_RESOURCE_GROUP  --location eastus

### Storage Terraform container

az storage container create --name tfstate --account-name $AZ_STORAGE_ACCOUNT --access-key $AZ_STORAGE_ACCESSKEY

### Environment variables used

```bash
export AZ_RESOURCE_GROUP=''
export AZ_STORAGE_ACCOUNT=''
export AZ_STORAGE_ACCESSKEY=''
```

### Environment variables used for terraform

```bash
export ARM_ACCESS_KEY=''
export ARM_CLIENT_ID=''
export ARM_CLIENT_SECRET=''
export ARM_SUBSCRIPTION_ID=''
export ARM_TENANT_ID=''
```

### Environment variables used for ansible

```bash
export AZURE_SUBSCRIPTION_ID=''
export AZURE_CLIENT_ID=''
export AZURE_SECRET=''
export AZURE_TENANT=''
```

### Ansible Azure requirements

#### Make sure you have the lastest

`ansible-galaxy collection install azure.azcollection --force`

#### Requirements file

`python3 -m pip install -r ~/.ansible/collections/ansible_collections/azure/azcollection/requirements-azure.txt`

### running terraform

`terraform init -backend-config=backend.hcl`

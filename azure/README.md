# cloud_config
my cloud configurations

## Azure

### Resource groups
az group create --name $AZ_RESOURCE_GROUP --location eastus --tags lifecycle:non-production purpose:play

### Storage accounts
az storage account create --name $AZ_STORAGE_ACCOUNT --resource-group $AZ_RESOURCE_GROUP  --location eastus

### Storage Terraform container
az storage container create --name tfstate --account-name $AZ_STORAGE_ACCOUNT --access-key $AZ_STORAGE_ACCESSKEY

### Environment variables used
- AZ_RESOURCE_GROUP
- AZ_STORAGE_ACCOUNT
- AZ_STORAGE_ACCESSKEY
#AzureRm Getting Started Script


Login-AzureRmAccount

$subscriptionName = "Visual Studio Premium with MSDN"

$location = "North Europe"

$resourceGroupName = "FabioFirstRealResourceGroup"

$storageAccountName = "fabiostorageacccount"

$templateUri = "https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/201-vm-from-specialized-vhd/azuredeploy.json"

# Create new resource group

New-AzureRmResourceGroup -Name $resourceGroupName -Location "North Europe"

Get-AzureRmSubscription –SubscriptionName $subscriptionName| Select-AzureRmSubscription 

Set-AzureRmCurrentStorageAccount –ResourceGroupName $resourceGroupName –StorageAccountName $storageAccountName | Out-Null

Get-AzureRmResourceGroup -Name $resourceGroupName

Get-AzureRmStorageAccount -ResourceGroupName  $resourceGroupName -Name $storageAccountName | Set-AzureRmCurrentStorageAccount | Out-Null

Get-AzureRmStorageAccount | Get-AzureStorageContainer | Get-AzureStorageBlob

New-AzureRmResourceGroupDeployment -Name "deployment name" -ResourceGroupName "resource group name" -TemplateUri 



Remove-AzureRmResourceGroup -Name $resourceGroupName -Force
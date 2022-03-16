param storageAccountName string = 'daryl'
@allowed([
  'westeurope'
  'southeastasia'
])
param storageAccountLocation string = 'southeastasia'

// @secure()
// param securePassword string = 'notSecured'

resource stg 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: storageAccountLocation
  kind: 'StorageV2'
  sku: {
    name: 'Premium_LRS'
  }
}


output stgout string = stg.properties.primaryEndpoints.blob

@description('Generated from /subscriptions/244eb28e-a9b8-42d4-9260-c0c553ae92e1/resourceGroups/rg-sterling-rabbit/providers/Microsoft.Databricks/workspaces/josephinedatabricks')
resource josephinedatabricks 'Microsoft.Databricks/workspaces@2023-09-15-preview' = {
  properties: {
    defaultCatalog: {
      initialType: 'UnityCatalog'
      initialName: ''
    }
    //managedResourceGroupId: '/subscriptions/244eb28e-a9b8-42d4-9260-c0c553ae92e1/resourceGroups/databricks-rg-josephinedatabricks-r6jcs254iufrg'
    managedResourceGroupId: subscriptionResourceId('Microsoft.Resources/resourceGroups', 'databricks-rg-josephinedatabricks-r6jcs254iufrg')


    //id: '/subscriptions/<subscription_id_here>/providers/Microsoft.Web/locations/<region_here>/managedApis/${connections_azuremonitorlogs_name}'
    //id: subscriptionResourceId('Microsoft.Web/locations/managedApis', location, connections_azuremonitorlogs_name)

    parameters: {
      enableNoPublicIp: {
        //type: 'Bool'
        value: false
      }
      prepareEncryption: {
        //type: 'Bool'
        value: false
      }
      publicIpName: {
        //type: 'String'
        value: 'nat-gw-public-ip'
      }
      requireInfrastructureEncryption: {
        //type: 'Bool'
        value: false
      }
      storageAccountName: {
        //type: 'String'
        value: 'dbstoragewv5jajzy4qlzm'
      }
      storageAccountSkuName: {
        //type: 'String'
        value: 'Standard_GRS'
      }
      vnetAddressPrefix: {
       // type: 'String'
        value: '10.139'
      }
    }
    authorizations: [
      {
        principalId: '9a74af6f-d153-4348-988a-e2672920bee9'
        roleDefinitionId: '8e3af657-a8ff-443c-a75c-2fe8c4bcb635'
      }
    ]
  }
  name: 'josephinedatabricks'
  sku: {
    name: 'trial'
  }
  location: 'eastus2'
  tags: {}
}

/*resource adminRoleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: 'AdminRoleAssignment'
  properties: {
    principalId: '<objectId of the admin user or group>'
    roleDefinitionId: '/providers/Microsoft.Authorization/roleDefinitions/{roleDefinitionId}' // Specify the appropriate role definition ID
    scope: workspace
  }
}*/

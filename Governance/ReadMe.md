
**Purpose of the AMP Blueprint**
============================
Prepare customer subscription for Migration to Azure


**What is the AMP Blueprint create for you:**
============================
Resource Groups
      "HUB-SharedServices-RG": 
      "HUB-Identity-RG": 
      "Network-RG": 
      "Application-RG": 
	Azure Policy
		Definitions
			Tagging (CostCenter)
				Tag Resource Group
				Append resources in the resource group with the CostCenter Tag
		Initiatives
			Enable Monitoring in Azure Security Center (78 Policies)
			LogAnalytics

			

**Input Parameters:**
============================
	"Organization":							"Enter your organization name (e.g. Contoso), must be unique"
    "HUB-RG-Location":						"Select 1 Azure Region for Deployment"
    "Policy_Allowed-Locations":				"Which Azure Regions will you allow resources to be built in?"
    "Policy_Allowed-VM-SKUs":				"Allowed virtual machine SKUs"
    "Policy_Allowed-StorageAccount-SKUs":	"SKU used in Diagnostic Log storage accounts"
    "Policy_CostCenter_Tag":				"Append CostCenter TAG & its value from the Resource Group"
    "LocalAdmin-Username":					"KeyVault-Secret LocalAdmin Username"
    "Local-Admin-Password":					"KeyVault-Secret LocalAdmin Password"
    "KeyVault-user-id":						"AAD object ID of the user that requires access to Key Vault."
	"LogAnalytics_DataRetention":			"Number of days data will be retained in Log Analytics"
    "LogAnalytics_Location":				"Region to use when establishing the workspace"
    "HUB-vNET-AddressSpace":				"HUB Vitual Network IP Address Space"
    "SPOKE-vNET-AddressSpace":				"SPOKE Vitual Network IP Address Space"


**How to Import this Blueprint**
============================
Install-Script -Name Manage-AzureRMBlueprint `
		-AllowPrerelease `
		-AcceptLicense `
		-Repository PSGallery `
		-MinimumVersion 2.3 `
		-Force `
		-Verbose 

	Manage-AzureRMBlueprint.ps1 `
		-Mode Import `
		-NewBlueprintName Governance `
		-SubscriptionId 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' `
		-ModuleMode AzureRM `
		-ImportDir 'C:\temp\Blueprint\Governance' `
		-Force


**END**
============================
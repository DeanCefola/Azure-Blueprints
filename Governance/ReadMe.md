
**Purpose of The Governance Blueprint**
============================
The Azure Governance Blueprint is a set of controls to help you manage your cloud estate

		
**What The Governance Blueprint will create for you:**
============================
	Azure Resource Groups
		  "HUB-SharedServices-RG": 
		  "HUB-Identity-RG": 
		  "Network-RG": 
		  "Application-RG": 
	Azure Policy
		Definitions
			Tagging (CostCenter)
				Tag Resource Group
				Append resources in the resource group with the CostCenter Tag
			Allowed Azure Region for Resources
			Allowed Storage Account SKUs
			Allowed Azure VM SKUs			
			Require Network Watch to be deployed 
			Require Azure Storage Account Secure transfer Encryption
		Initiatives
			Enable Monitoring in Azure Security Center (78 Policies)			
	Azure Templates
		Deploy Azure Key Vault 
		Deploy Azure Log Analytics Workspace
		Deploy Azure Security Center Standard
		Deploy Azure Virtual Network Hub

			
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


**How to install the Az.Blueprints PowerShell Module**
============================
Install-Module -Name Az.Blueprint `
    -Repository PSGallery `
    -MinimumVersion 0.2.0 `
    -AllowClobber `
    -Force `
    -Verbose
Import-Module `
    -Name Az.Blueprint


**How to Import The Governance Blueprint into Azure**
============================
$LocalPath='C:\temp\Blueprint\Governance'
$BPName = $LocalPath.Split('\') | select -Last 1
Import-AzBlueprintWithArtifact `
    -Name $BPName `
    -InputPath $LocalPath `
    -SubscriptionId 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx' `
    -Force `
    -Verbose


**END**
============================
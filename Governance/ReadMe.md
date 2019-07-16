
**Learn more about Blueprints at The Azure Academy**
============================
	https://www.youtube.com/AzureAcademy/playlists
	
	

**Purpose of The Governance Blueprint**
============================
	The Azure Governance Blueprint is a set of controls to help you manage your cloud estate

		
**What The Governance Blueprint will create for you:**
============================
	Azure Resource Groups
		  "SharedServices-RG": 
		  "Identity-RG": 
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
			Allowed Azure Resource Types
			Require Network Watch to be deployed 
			Require Azure Storage Account Secure transfer Encryption
		Initiatives
			Enable Monitoring in Azure Security Center (78 Policies)			
	Azure Templates
		Deploy Azure Key Vault 
		Deploy Azure Log Analytics Workspace
		Deploy Azure Security Center Standard
		Deploy Azure Virtual Network Hub

			
**Blueprint Parameters:**
============================
	"Organization":					"Enter your organization name (e.g. Contoso), must be unique"
	"AzureRegion":					"Select the Azure Region to deploy the Resources"
	"Policy_Allowed-Locations":		"Which Azure Regions will you allow resources to be built in?"


**Artifact Parameters:**
============================
	"IPAddress_Space":             "Virtual Network IP Addressspace - Provide first 2 octets i.e. 10.0"	
	"KV-AccessPolicy":             "Azure AD Group or User <Object ID> to grant permissions to in Key Vault"
	"LogAnalytics_DataRetention":  "Number of days data will be retained in in Log Analytics"
	"LogAnalytics_Location":       "Region used when establishing the workspace"
	"Policy_Allowed-StorageAccount-SKUs":	"SKU used in Diagnostic Log storage accounts"
	"Policy_Allowed-VM-SKUs":				"Allowed virtual machine SKUs"
	"Policy_CostCenter_Tag":                "Append CostCenter TAG & its value from the Resource Group"
	"Policy_Allowed-Resource-Types":        "Which Azure Resources you want to allow in your environment"
	

**END**
============================


**Purpose of the AMP Blueprint**
============================
	Prepare customer subscription for Migration to Azure


**What is the AMP Blueprint create for you:**
============================
	Resource Groups
		"HUB-SharedServices-RG":
			Azure KeyVault 
			Azure Log Analytics Workspace
		"ASR-RG": 
			Azure Site Recovery
		"Network-RG": 
			Virtual Network 
		"Migration-RG": 
			Azure Migrate Project
			

**Input Parameters:**
============================
	"Organization":                "Enter your organization name (e.g. Contoso), must be unique"
	"AzureRegion":                 "Select one Azure Region for Deployment"
	"IPAddress_Space":             "Provide first 2 octets i.e. 10.0"	
	"KV-AccessPolicy":             "User ID to grant permissions to in Key Vault"
	"LogAnalytics_DataRetention":  "Number of days data will be retained in in Log Analytics"
	"LogAnalytics_Location":       "Region used when establishing the workspace"


**How to Manage Azure Blueprints, Import / Export:**
============================
Install-Module -Name Az.Blueprint `
    -Repository PSGallery `
    -MinimumVersion 0.2.0 `
    -AllowClobber `
    -Force `
    -Verbose
Import-Module `
    -Name Az.Blueprint


**To IMPORT Blueprints from your subscription do the following:**
============================
$LocalPath='C:\temp\Blueprint\AMP'
$BPName = $LocalPath.Split('\') | select -Last 1
Import-AzBlueprintWithArtifact `
    -Name $BPName `
    -InputPath $LocalPath `
    -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx `
    -Force `
    -Verbose



**END**
============================

**Learn more about Blueprints at The Azure Academy**
============================
	https://www.youtube.com/AzureAcademy/playlists
	
	
**Purpose of the AMP Blueprint**
============================
	Prepare customer subscription for Migration to Azure


**What is the AMP Blueprint create for you:**
============================
	Resource Groups
		"SharedServices-RG":
			Azure KeyVault 
			Azure Log Analytics Workspace
			Azure Storage Account
			Azure Migrate Project
				Azure Migrate: Server   Assessment
				Azure Migrate: Server   Migration
				Azure Migrate: Database Assessment
				Azure Migrate: Database Migration
		"Network-RG": 
			Virtual Network
			

**Blueprint Parameters:**
============================
	"Organization":                "Enter your organization name (e.g. Contoso), must be unique"
	"AzureRegion":                 "Select the Azure Region to deploy the Resources"


**Artifact Parameters:**
============================
	"IPAddress_Space":             "Virtual Network IP Addressspace - Provide first 2 octets i.e. 10.0"	
	"KV-AccessPolicy":             "Azure AD Group or User <Object ID> to grant permissions to in Key Vault"
	"LogAnalytics_DataRetention":  "Number of days data will be retained in in Log Analytics"
	"LogAnalytics_Location":       "Region used when establishing the workspace"
	"Azure_Migrate_Location":	   "Select the Region to deploy Azure Migrate"


**END**
============================

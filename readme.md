**How to Manage Azure Blueprints, Import / Export:**
============================
	Install-Script -Name Manage-AzureRMBlueprint `
		-AllowPrerelease `
		-AcceptLicense `
		-Repository PSGallery `
		-MinimumVersion 2.3 `
		-Force `
		-Verbose 


**To EXPORT Blueprints from your subscription do the following:**
============================
Manage-AzureRMBlueprint.ps1 `
    -Mode Export `
    -BlueprintName Azure-Governance `
    -ExportDir 'C:\temp\Azure-Governance' `
    -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx `
    -ModuleMode AzureRM `
    -Verbose


**To IMPORT Blueprints from your subscription do the following:**
============================
Manage-AzureRMBlueprint.ps1 `
    -Mode Import `
    -NewBlueprintName Azure-Governance `
    -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx `
    -ModuleMode AzureRM `
    -ImportDir 'C:\temp\Azure-Governance' `
    -Force

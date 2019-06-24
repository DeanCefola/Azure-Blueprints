
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


**To EXPORT Blueprints from your subscription do the following:**
============================
$BPName = 'Test'
$LocalPath = 'C:\temp\Blueprint'
$BP = Get-AzBlueprint | Where-Object -Property Name -EQ $BPName
$BPVersion = $BP.Versions | select -Last 1
Export-AzBlueprintWithArtifact `
    -Blueprint $BP `
    -OutputPath $LocalPath `
    -Version $BPVersion `
    -Force `
    -Verbose


**To IMPORT Blueprints from your subscription do the following:**
============================
$LocalPath='C:\temp\Blueprint\Governance'
$BPName = 'Governance'
Import-AzBlueprintWithArtifact `
    -Name $BPName `
    -InputPath $LocalPath `
    -SubscriptionId xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx `
    -Force `
    -Verbose

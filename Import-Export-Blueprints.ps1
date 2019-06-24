  <#Author   : Dean Cefola
# Creation Date: 05-20-2019
# Usage      : AZURE Blueprint - Export and Import as Code 

#******************************************************************************
# Date                         Version      Changes
#------------------------------------------------------------------------------
# 05/20/2019                       1.0       Intial Version
#
#******************************************************************************
#
#>


##############################
#    Get Subscription Info   #
##############################
$SubName = '<ENTER SUBSCRIPTION NAME>'
$Subscription = (Get-AzureRmSubscription `
    -SubscriptionName $SubName).id


##########################################################
#    Get PowerShell Script to manage Azure Blueprints    #
##########################################################
Install-Script -Name Manage-AzureRMBlueprint `
    -Repository PSGallery `
    -MinimumVersion 2.3 `
    -Force `
    -Verbose 

    
##########################
#    Export Blueprint    #
##########################
Manage-AzureRMBlueprint.ps1 `
    -Mode Export `
    -BlueprintName ISO27001 `
    -ExportDir C:\temp\Blueprint `
    -SubscriptionId $Subscription `
    -ModuleMode AzureRM `
    -Verbose


##########################
#    Import Blueprint    #
##########################
$LocalPath='C:\temp\Blueprints'
Manage-AzureRMBlueprint.ps1 `
    -Mode Import `
    -NewBlueprintName Governance `
    -ManagementGroupID AA-Root `
    -SubscriptionId $Subscription `
    -ModuleMode AzureRM `
    -ImportDir $LocalPath `
    -Force


#####################################################
#    Clean up Unicode in your exported Blueprints    #
######################################################
$Path = 'C:\temp\Blueprint'
$configFiles = Get-ChildItem $Path *.json -Recurse
foreach ($File in $configFiles) {    
    $Content = [System.IO.File]::ReadAllText($File.FullName).Replace("\u0027","'")
    [System.IO.File]::WriteAllText($File.FullName, $Content)
}


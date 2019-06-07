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


##########################################################
#    Get PowerShell Script to manage Azure Blueprints    #
##########################################################
Install-Script -Name Manage-AzureRMBlueprint `
    -AllowPrerelease `
    -AcceptLicense `
    -Repository PSGallery `
    -MinimumVersion 2.3 `
    -Force `
    -Verbose 

##############################
#    Get Subscription Info   #
##############################
$SubName = 'Azure CXP FTA Internal Subscription DEACEF-2'
$Subscription = (Get-AzureRmSubscription `
    -SubscriptionName $SubName).id


##########################
#    Export Blueprint    #
##########################
Manage-AzureRMBlueprint.ps1 `
    -Mode Export `
    -BlueprintName Governance `
    -ExportDir c:\temp\Blueprint `
    -SubscriptionId $Subscription `
    -ModuleMode AzureRM `
    -Verbose


##########################
#    Import Blueprint    #
##########################
Manage-AzureRMBlueprint.ps1 `
    -Mode Import `
    -NewBlueprintName Governance262019 `
    -ManagementGroupID AA-Root `
    -SubscriptionId $Subscription `
    -ModuleMode AzureRM `
    -ImportDir 'C:\_VSTS\GitHub\Dean Cefola\Azure-Blueprints\Azure-Governance' `
    -Force


  <#Author   : Dean Cefola
# Creation Date: 05-20-2019
# Usage      : AZURE Blueprint - Export and Import as Code 

#******************************************************************************
# Date                         Version      Changes
#------------------------------------------------------------------------------
# 05/20/2019                       1.0       Intial Version
# 06/25/2019                       2.0       Convert to Az.Blueprint modules
#
#******************************************************************************
#
#>


##############################
#    Get Subscription Info   #
##############################
$SubName = '<ENTER SUBSCRIPTION NAME>'
$SubID = (Get-AzSubscription `
    -SubscriptionName $SubName).id
$MgmtID = (Get-AzManagementGroup -GroupName AA-Root).id.Split('/')[4]


##########################################################
#    Get PowerShell Script to manage Azure Blueprints    #
##########################################################
Install-Module -Name Az.Blueprint `
    -Repository PSGallery `
    -MinimumVersion 0.2.0 `
    -AllowClobber `
    -Force `
    -Verbose
Import-Module `
    -Name Az.Blueprint


##########################
#    Export Blueprint    #
##########################
$BPName = 'Test'
$LocalPath = 'C:\temp\Blueprint'
$BP = Get-AzBlueprint -ManagementGroupId $MgmtID | Where-Object -Property Name -EQ $BPName
$BPVersion = $BP.Versions | select -Last 1
Export-AzBlueprintWithArtifact `
    -Blueprint $BP `
    -OutputPath $LocalPath `
    -Version $BPVersion `
    -Force `
    -Verbose


##########################
#    Import Blueprint    #
##########################
$LocalPath='C:\temp\Blueprint\AMP'
$BPName = $LocalPath.Split('\') | select -Last 1
Import-AzBlueprintWithArtifact `
    -Name $BPName `
    -InputPath $LocalPath `
    -SubscriptionId $SubID `
    -Force `
    -Verbose

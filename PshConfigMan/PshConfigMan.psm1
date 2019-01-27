<#PSScriptInfo

.VERSION 0.6

.GUID 91bc8f57-bc5b-4f67-9090-ff6219bc4de0

.AUTHOR John Scarrott

.COMPANYNAME

.COPYRIGHT

.TAGS

.LICENSEURI

.PROJECTURI

.RELEASENOTES


#>

<#

.DESCRIPTION
 Script for managing config files with git

#>

function Invoke-ConfigCommand
{ 
    git --git-dir="$Home\.myconf" --work-tree="$Home" $args
}

function Get-ConfigRepository
{
    param([Parameter(Position=0,mandatory=$true)]
        [string] $repoURL)

    git clone --bare $repoURL $Home\.myconf
}

Set-alias config Invoke-ConfigCommand

Export-ModuleMember -Function * -Alias *
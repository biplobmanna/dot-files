# This imports $ColorSchemes variable, which is a dictionary of colour scheme
Import-Module $PSScriptRoot\colour_schemes.psm1

# Sourcing various powershell scripts into profile
# Use full paths since powershell7 profile is also linked to this
. $PSScriptRoot\prompt.ps1
. $PSScriptRoot\commands.ps1
. $PSScriptRoot\aliases.ps1

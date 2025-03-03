
## Customize the prompt
function prompt {
    $DEFAULT_COLORS = $ColorSchemes["green_blue_purple_gold"]
    $COLOR_RESET = "$([char]27)[0m"
	
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    # $identity.name returns UNMNGD\biplo
    # and only 'biplo' is needed
    $username = $identity.Name -split "\\"
    $username = $username[1]
    $hostname = [System.Net.Dns]::GetHostName()
    $principal = [Security.Principal.WindowsPrincipal] $identity
    $adminRole = [Security.Principal.WindowsBuiltInRole]::Administrator
	
    # check if powershell is in debug-mode
    $prefix = if (Test-Path variable:/PSDebugContext) { '[DBG]: ' } else { '' }
	
    # check if powershell is in admin-mode
    if ($principal.IsInRole($adminRole)) {
        $prefix = "[ADMIN]:$prefix "
    }
	
    # create the body
    # user@hostname path >
    $body = $DEFAULT_COLORS[0] + $username + "@" + $hostname + $COLOR_RESET 
    $body += $DEFAULT_COLORS[1] + " " + $PWD.path + $COLOR_RESET
	
    $suffix = $(if ($NestedPromptLevel -ge 1) { ' >>' }) + ' > '
    $suffix = $DEFAULT_COLORS[-1] + $suffix + $COLOR_RESET
    "${prefix}${body}${suffix}"
}

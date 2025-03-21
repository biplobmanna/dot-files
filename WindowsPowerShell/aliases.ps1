# Setting custom aliases for powershell
# Load aliases at the end, as there are dependencies on other files

# Commonly used programs
Set-Alias -Name vim -Value nvim
Set-Alias -Name npp -Value "C:\Program Files\Notepad++\notepad++.exe"
Set-Alias -Name np -Value notepad


# Set UNIX-like aliases for the admin command, so sudo <command> will run the command with elevated rights.
# The `admin` command is present in the commands.ps1 file
Set-Alias -Name su -Value admin
Set-Alias -Name sudo -Value admin

# lazygit
Set-Alias -Name lg -Value lazygit

# system-info
Set-Alias -Name sysinfo -Value Get-ComputerInfo

# git commands
function gs { git status }
function ga { git add }
function gp { git pull }
function gc { git commit }

# better find
Set-Alias -Name find -Value fd

# grep mapped to ripgrep
Set-Alias -Name grep -Value rg

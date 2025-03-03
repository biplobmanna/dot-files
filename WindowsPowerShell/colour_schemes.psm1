$ESC = [char]27 # Escape Character Code
$FG = "38;2" # Foreground 
#$BG = "48;2" # Background

$ColorSchemes = New-Object 'System.Collections.Generic.Dictionary[System.String, System.String[]]'

$ColorSchemes.Add('black_teal_sage', @(
		"$ESC[$FG;36;54;66m", 
		"$ESC[$FG;56;116;120m",
		"$ESC[$FG;98;149;132m",
		"$ESC[$FG;226;241;231m"))

$ColorSchemes.Add('green_blue_purple_gold', @(
		"$ESC[$FG;15;188;112m", 
		"$ESC[$FG;26;157;244m",
		"$ESC[$FG;189;26;244m",
		"$ESC[$FG;244;177;26m"))

Export-ModuleMember -Variable ColorSchemes

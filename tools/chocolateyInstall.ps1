$url = "http://sourceforge.net/projects/simutrans/files/simutrans/120-0-1/simuwin-sdl-120-0-1.zip"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	$simudir = "${Env:ProgramFiles(x86)}"
}else{
	$simudir = "${Env:ProgramFiles}"
}
Install-ChocolateyZipPackage "simutrans" $url "$simudir"
Install-ChocolateyDesktopLink -TargetFilePath "$simudir\simutrans\simutrans.exe"

$startMenu = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Programs))
$simutransStartMenuGroup = Join-Path $startMenu "Simutrans"
New-Item $simutransStartMenuGroup -type directory -force
$startMenuLink = Join-Path $simutransStartMenuGroup "simutrans.lnk"
Install-ChocolateyShortcut -shortcutFilePath $startMenuLink -targetPath "$simudir\simutrans\simutrans.exe"
$url = "http://sourceforge.net/projects/simutrans/files/pak64/120-1/simupak64-120-1-2.zip"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles(x86)}" "")
}else{
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles}" "")
}
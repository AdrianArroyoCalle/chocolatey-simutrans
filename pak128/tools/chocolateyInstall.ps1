$url = "http://sourceforge.net/projects/simutrans/files/pak128/pak128%20for%20RC%20120%20%282.5.2%2C%20bugfixes%29/pak128-2.5.2--RC_120.zip"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles(x86)}" "")
}else{
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles}" "")
}
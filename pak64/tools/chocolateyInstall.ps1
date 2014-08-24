$url = "http://sourceforge.net/projects/simutrans/files/pak64/112-3/simupak64-112-3.zip"

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles(x86)}" "")
}else{
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles}" "")
}
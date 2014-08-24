$url = "http://sourceforge.net/projects/simutrans/files/pak128/pak128%20for%20112-2/pak128-2.3.0--112.2.zip"

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles(x86)}" "")
}else{
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles}" "")
}
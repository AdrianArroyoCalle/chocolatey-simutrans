$url = "http://sourceforge.net/projects/simutrans/files/simutrans/112-3/simuwin-sdl-112-3.zip"

$processor = Get-WmiObject Win32_Processor
$is64bit = $processor.AddressWidth -eq 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url "${Env:ProgramFiles(x86)}"
}else{
	Install-ChocolateyZipPackage "simutrans" $url "${Env:ProgramFiles}"
}
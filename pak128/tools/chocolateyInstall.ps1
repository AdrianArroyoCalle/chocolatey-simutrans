$url = "https://sourceforge.net/projects/simutrans/files/pak128/pak128%20for%20ST%20120%20(2.6,%20completed%20elevated%20tracks)/pak128-2.6--ST120.zip"

$is64bit = Get-ProcessorBits 64
if ($is64bit) {
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles(x86)}" "")
}else{
	Install-ChocolateyZipPackage "simutrans" $url $(Join-Path "${Env:ProgramFiles}" "")
}
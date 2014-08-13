$package = 'simutrans'
$url = "http://sourceforge.net/projects/simutrans/files/simutrans/112-3/simuwin-sdl-112-3.zip/download"
$file = "simuwin-sdl-112.3.zip"
$binRoot = Get-BinRoot

Install-ChocolateyZipPackage $package $url $(Join-Path $binRoot "Simutrans")
	
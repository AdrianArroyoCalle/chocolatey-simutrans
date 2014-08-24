chocolatey-simutrans
====================

Simutrans package in Chocolatey

#Installation

For a simple installation type:

```
choco install simutrans
```

If you want the pak128, try this instead:

```
choco install simutrans-pak128
```

#Development

Update apps: `choco update all`
Install tools: `choco install nuget.commandline`
Setup environment: `nuget SetApiKey [API_KEY_HERE] -source http://chocolatey.org/` API Key is on http://chocolatey.org/account

Edit the NUSPEC and the chocolateyInstall.ps1 files

Package: `choco pack`
Install local: `choco install PACKAGE -source '%cd%' -force`
Push to Chocolatey: `choco push PACKAGE.nupkg`

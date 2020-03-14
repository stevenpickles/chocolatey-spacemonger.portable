$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.aplusfreeware.com/categories/LFWV/files/spcmn140.zip'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url

  softwareName  = 'spacemonger.portable*'

  checksum      = '662378EEA5A0E74DA3C33E54735C7C4EFD0FB44D9E739A246DA478F80D6296BF'
  checksumType  = 'sha256'

  silentArgs   = ''
  validExitCodes= @(0)
}

Install-ChocolateyZipPackage $packageName $url $toolsDir



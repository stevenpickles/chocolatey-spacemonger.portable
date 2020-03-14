$packageName    = 'spacemonger.portable'
$url            = 'http://www.aplusfreeware.com/categories/LFWV/files/spcmn140.zip'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$checksum       = '662378EEA5A0E74DA3C33E54735C7C4EFD0FB44D9E739A246DA478F80D6296BF'
$checksumType   = 'sha256'

Install-ChocolateyZipPackage `
    -PackageName    $packageName `
    -Url            $url `
    -UnzipLocation  $toolsDir `
    -Checksum       $checksum `
    -ChecksumType   $checksumType
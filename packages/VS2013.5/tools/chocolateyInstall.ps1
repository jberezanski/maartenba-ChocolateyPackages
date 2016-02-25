$packageVersion = '1.0.0'
$arguments = @{
    packageName = 'VS2013.5'
    url = 'https://download.microsoft.com/download/A/F/9/AF95E6F8-2E6E-49D0-A48A-8E918D7FD768/VS2013.5.exe'
    checksumType = 'sha1'
    checksum = '2E67C8D07447FDB3222D9F602AFAFAD3E60DC1CB'
    installerType = 'exe'
    silentArgs = "/Passive /NoRestart /Log ""${Env:TEMP}\${packageName}-${packageVersion}.log"""
    validExitCodes = @(0, 3010)
}
Install-ChocolateyPackage @arguments

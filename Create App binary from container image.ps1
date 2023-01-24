#Creates NUPANO app binary (tar.gz) from a container image for Windows
#Linux only: docker save myimage:latest | gzip > myimage_latest.tar.gz


Write-Host "This script creates a NUPANO app binary from a docker image in your local system" -ForegroundColor Green

#get image and tag from the user
$ImageName = Read-Host -Prompt 'Docker image name'
$ImageTag = Read-Host -Prompt 'Docker image tag'

#create a file name for the image based on name and tag and make it file name save (replace special characters
$ImageNameFileName = "$($ImageName -replace "[/.]","-")-$($ImageTag -replace "[/.]","-").tar"

#get the image from docker
Write-Host
Write-Host "Save image from your local system to a tar archive..." -ForegroundColor White
docker save --output $ImageNameFileName "$($ImageName):$($ImageTag)"


#access 7zip to create *tar.gz
$7zipPath = "$env:ProgramFiles\7-Zip\7z.exe"

if (-not (Test-Path -Path $7zipPath -PathType Leaf)) {
    Write-Host "7 zip file '$7zipPath' not found" -ForegroundColor Red
}
else
{
    Set-Alias 7zip $7zipPath

    $Source = $ImageNameFileName
    $Target = "$($ImageNameFileName).gz"

    Write-Host "Convert container image into a *.tar.gz" -ForegroundColor White
    Write-Host
    
    7zip a $Target $Source

    Write-Host
    Write-Host "NUPANO app binary successfully created!" -ForegroundColor Green
    Write-Host "$($Target) is ready for upload into the App Inventory" -ForegroundColor Green
}

#Wait for user prompt before exit and closing
pause
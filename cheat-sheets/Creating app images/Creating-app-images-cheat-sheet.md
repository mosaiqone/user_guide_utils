# Create App binary from container image
*License: MIT*

## On Windows
### Usage
1. Copy the file where you want to get the app binary 
2. Call the script and follow the guide

### Lesson learned
The execution policy of your computer might not allow running unsigned Powershell scripts because of security concerns.
This should prevent malicious software to execute code without your permission.

If you encounter such an error when running the "Create container app image" script follow the steps below:
1. Open Powershell where the script is located
2. Type: Get-Item '.\Create App binary from container image.ps1' | Unblock-File
3. Start the script like & '.\Create App binary from container image.ps1'



## On Linux
```sh
sudo docker save <image>:<tag> | gzip > image-tag.tar.gz
```

Set-ExecutionPolicy unrestricted 

.\ALC\alc.exe /project:. /out:.\l4d_ALProject22_1.0.0.3.app /packagecachepath:.\.alpackages

ls

$secpasswd = ConvertTo-SecureString "[SECURESTRINGWEBKEYREPLACE]" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("[USERNAMEREPLACE]", $secpasswd)
$appFile =  (Get-Item (".\l4d_ALProject22_1.0.0.5.app")).FullName

Write-Host $secpasswd
Write-Host $mycreds
Write-Host $appFile

Invoke-WebRequest `
            -Method Patch `
            -Uri "https://api.businesscentral.dynamics.com/v2.0/[DOMAINREPLACE].onmicrosoft.com/[ENVIRONMENTNAMEREPLACE]/api/microsoft/automation/v1.0/companies([COMPANYGUIDREPLACE])/extensionUpload(0)/content" `
*********** BEISPIEL -Uri "https://api.businesscentral.dynamics.com/v2.0/abcdefg.onmicrosoft.com/MeineSandbox/api/microsoft/automation/v1.0/companies(637c2981-ac85-4a13-8d43-4b2c6fcd19ea)/extensionUpload(0)/content" `
            -Credential $mycreds `
           -ContentType "application/octet-stream" `
           -Headers @{"If-Match" = "*"} `
           -InFile $appFile 


Start-Sleep -s 10
echo ""
echo "====> Setting up short-hand command for Docker and Service <===="
echo ""

New-Item -type file -path $profile -force
Copy-Item Microsoft.Powershell_profile.ps1 $profile
. $profile

echo "----------------------------------"
echo "******* END : SETTING UP  *******"
echo "----------------------------------"
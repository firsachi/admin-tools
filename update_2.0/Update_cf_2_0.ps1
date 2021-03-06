. C:\admin-tools\utils\1C-Utils.ps1
$listBase = Get-Content c:\admin-tools\update_2.0\BaseList.ini
$cfName = Get-Content c:\admin-tools\update_2.0\template.ini
$1cv8 = Get-Content c:\admin-tools\1cv8.ini
$secret = Get-Content c:\admin-tools\secret.ini
$user = $secret[0]
$pass = $secret[1]
$cf = '/UpdateCfg "'+ $cfName +'" /UpdateDBCfg'
$dirLog = "d:\logs\backup\"
$pathBackup = "\\u140142.your-storagebox.de\backup\1c-backup\"
foreach ($nameBase in $listBase){
	"backup database " + $nameBase
	Backup-1C-Base -$DirLog -NameBase $nameBase -PathBackup $pathBackup
	"Update dabatase name=" + $nameBase
	Update-Configuration -User $user -Passwd $pass -NameBase $nameBase -cf $cf
}
foreach ($nameBase in $listBase){
	OPEN-BADATABSE -User $user -Passwd $pass -NameBase $nameBase
}
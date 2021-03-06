function Backup-1C-Base{
	Param(
		[String]$DirLog,
		[String]$NameBase,
		[String]$PathBackup
    )
	##################################################################################################
	$dateBackup = "-" + (Get-Date -Format dd-MM-yyyy-hh-mm)
	$log = '/Out"' + $DirLog + $NameBase + '.log"'
	$db = '/S "localhost\' + $NameBase +'"'
	$dump = '/DumpIB "'+ $PathBackup + $NameBase + '\' + $NameBase + $dateBackup + '.dt"'
	$AllArgs = @('CONFIG', $db, $user, $pass, $dump, $log)
	Start-Process -FilePath $1cv8 -ArgumentList $AllArgs -Wait
}

FUNCTION OPEN-BADATABSE{
	
	Param(
		[String]$User,
		[String]$Passwd,
		[String]$NameBase
    )
	
	$db = '/S "localhost\' + $NameBase +'"'
	$AllArgs = @('ENTERPRISE', $db, $User, $Passwd)
	Start-Process -FilePath $1cv8 -ArgumentList $AllArgs -Wait
}
FUNCTION Open-Configuration {

	Param(
		[String]$User,
		[String]$Passwd,
		[String]$NameBase
    )
	
	$db = '/S "localhost\' + $NameBase +'"'
	$AllArgs = @('CONFIG', $db, $User, $Passwd)
	Start-Process -FilePath $1cv8 -ArgumentList $AllArgs -Wait
}

FUNCTION Update-Configuration {

	Param(
		[String]$User,
		[String]$Passwd,
		[String]$NameBase,
		[String]$cf
    )
	
	$db = '/S "localhost\' + $NameBase +'"'
	$log = '/Out"d:\logs\' + $NameBase + '.log"'
	$AllArgs = @('CONFIG', $db, $User, $Passwd, $cf, $log)
	Start-Process -FilePath $1cv8 -ArgumentList $AllArgs -Wait
}
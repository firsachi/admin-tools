$HowManyDays = 30
$smtpServer = ""
$toEmail = ""
$fromEmail = ""
$subjectEmail = "Backup folder"
# import function
. c:\admin-tools\compres-file-7z.ps1
. c:\admin-tools\clearDir.ps1
foreach($nameFile in Get-Content 'c:\admin-tools\backup.ini'){
	. c:\admin-tools\backup-folder.ps1
}
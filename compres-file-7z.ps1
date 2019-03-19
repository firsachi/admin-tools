Function Compress-File-7z{
	Param(
    [parameter(Mandatory)]
    [String]$FileName,
	[parameter(Mandatory)]
    [String]$FolderCompres
    )
	$archivePach = $wayTo + $FileName + " " + $wayFrom
	Set-Location -Path 'c:\Program Files\7-Zip\'
	$comand = ".\7z.exe a -ssw -mx5 -r0 " + $archivePach
	#return Invoke-Expression -Command $comand
}

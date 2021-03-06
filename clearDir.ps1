FUNCTION Clear-Dir{
	Param(
    [parameter(Mandatory)]
    [String]$Folder,
	[parameter(Mandatory)]
	[int]$HowManyDays
    )
	$limit = (Get-Date).AddDays(- $HowManyDays)
	Set-Location $Folder
	Get-ChildItem  | Where-Object { !$_.PSIsContainer -and $_.CreationTime -lt $limit } | Remove-Item 
}
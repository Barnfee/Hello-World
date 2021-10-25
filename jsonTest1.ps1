$Jstates = Get-Content -Raw -Path .\states.json | ConvertFrom-Json
$states = $Jstates.PSObject.Properties | ForEach-Object {
	[pscustomobject]@{
		Abbr    = $_.Name
		Name    = $_.Value.Name
		Capital = $_.Value.Capital
		Lat     = $_.Value.Lat
		Long    = $_.Value.Long
	}
}
$states | ConvertTo-Csv
<#
Putpose: This script displays the current time for San Antonio, Los Angeles, Puerto Princesa, and Tokyo.
Other applications: These four time zones are most relevant to me but this could be switched out for other time zones.
	To do this, use the command Get-TimeZone -ListAvailable.
	Once you have the Id of your desired time zone, replace the time zone in the appropriate variable.
	Change the variable name, city name, save and enjoy.
#>


#Assigning each timezone to a variable
$SA = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId((Get-Date), 'Central Standard Time')
$LA = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId((Get-Date), 'Pacific Standard Time')
$Puerto = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId((Get-Date), 'North Asia East Standard Time')
$Tokyo = [System.TimeZoneInfo]::ConvertTimeBySystemTimeZoneId((Get-Date), 'Tokyo Standard Time')

#printing city names and time at each location
write-Host "San Antonio:     " $SA
write-Host "Los Angeles:     " $LA
write-Host "Puerto Princesa :" $Puerto
write-Host "Tokyo:           " $Tokyo



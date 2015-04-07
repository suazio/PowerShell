Function Get-Desc {

Param(
[Parameter(Mandatory=$True)]
$Name
)

$Name = "*$Name*"
Get-ADComputer -Filter {Description -Like $Name} -Properties Description,LastLogonDate,Operatingsystem | Select-Object Description,Name,OperatingSystem,LastLogonDate,Enabled

}
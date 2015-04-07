Function Get-ADdesc {

    Param(
    [Parameter(Mandatory=$True)]
    [string]$Name
    )

   
    Get-ADComputer -Filter {Description -Like '*$Name*'} -Properties Description,LastLogonDate,Operatingsystem | 
    Select-Object Description,Name,OperatingSystem,LastLogonDate,Enabled

}
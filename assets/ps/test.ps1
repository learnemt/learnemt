$a =(Get-WmiObject Win32_OperatingSystem).OSArchitecture -eq "bit"
$b =(Get-WmiObject Win32_OperatingSystem).OSArchitecture -eq "64 位"
write-host $a
write-host $b

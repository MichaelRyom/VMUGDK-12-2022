Do { clear-host; Write-Ascii -InputObject "          From Zero" -ForegroundColor Rainbow; Write-Ascii -InputObject "          To" -ForegroundColor Rainbow; Write-Ascii -InputObject "          Hero" -ForegroundColor Rainbow; Sleep 2; clear-host; Write-Ascii -InputObject "          A presentation by" -ForegroundColor Rainbow; Write-Ascii -InputObject "          Michael Ryom" -ForegroundColor Rainbow; Sleep 2; clear-host; Write-host $(Convert-ImageToAscii -FitConsoleHeight -Path 'C:\Users\Michael Ryom\Downloads\PowerShell_5.0_icon.png' -Resolution Mid) -ForegroundColor Blue; sleep 5 } until ( $i -eq "pie" )

# Powershell vs Powershell core
Clear-Host;Write-Ascii -InputObject "Powershell vs Powershell core" -ForegroundColor Blue

$PSVersionTable
Get-VICredentialStoreItem


# Single vs double quotes
# single = verbatim string eller ordret
# double = expandable string
Clear-Host ;Write-Ascii -InputObject "about_operators" -ForegroundColor Blue ;Write-Ascii -InputObject " ' vs """ -ForegroundColor Blue

vmugdk
'vmugdk'
"vmugdk"

1 + 1
'1 + 1'
"1 + 1"

$a = 'vmug'
$b = "dk"
$a + $b

'$a + $b'
"$a + $b"
"$a$b"

$a = 'vmugdk'
$b = '2022'

'Velkommen til $a i $b'
"Velkommen til $a i $b"

"Variablen $a indeholder teksten $a"
"Variablen `$a indeholder teksten $a"

Get-Date -Format 'dd MMM yyyy'
"Velkommen til $a den Get-Date -Format 'dd MMM yyyy'"

$c = Get-Date -Format 'dd MMM yyyy'
"Velkommen til $a den $c"

"Velkommen til $a den $(Get-Date -Format 'dd MMM yyyy')"

# Get-member
Clear-Host; Write-Ascii -InputObject "Get-Member" -ForegroundColor Blue
$a | Get-Member
$a.Length
$a.ToUpper
$a.ToUpper()

1 | gm

# Get-Type
Clear-Host; Write-Ascii -InputObject "Get-Type" -ForegroundColor Blue
$a.GetType
$a.GetType() | gm
$a.GetType().NameSpace
$a.GetType().FullName


# Data types
Clear-Host; Write-Ascii -InputObject "Inferred / Data types " -ForegroundColor Blue
$d = @()
$d.GetType()
$d += 1
$d += 'a'
$d

[String[]]$d = @()
$d.GetType()
$d += 1
$d += 'a'
$d += '2'
$d

$d[0]
$d[0].GetType()

1 + 1
$d[0] + 1
$d[2] + 1
[INT]$d[2] + 1
[double]$d[2] + 1.1

([int]$d[2] + 1.1).GetType()

# Alias
Clear-Host; Write-Ascii -InputObject "Alias" -ForegroundColor Blue

Alias
Set-Alias -Name was -Value Write-Ascii
was 123
Remove-Item Alias:was

# Get-Help
Clear-Host ;Convert-ImageToAscii -Path 'C:\Users\Michael Ryom\Downloads\405c9fcefcf7796ed20baab380c7fdd4.jpg' -Resolution High
Clear-Host ;Write-Host "https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about"

Get-Help Get-process

Get-Help Get-process -Full

$PID

ps $pid

Get-Help Get-process -Full

ps powershell

ps -id $pid

ps -id $pid | ps

Get-help Get-Process -Online

Get-help Get-Process -ShowWindow

# Set-Debug
Clear-Host; Write-Ascii -InputObject "Set-PSDebug" -ForegroundColor Blue

$i=0
do {
    $i++
} until ( $i -eq 10 )

Set-PSDebug -Trace 1

$i=0
do {
    $i++
} until ( $i -eq 10 )

Set-PSDebug -Trace 2

$i=0
do {
    $i++
} until ( $i -eq 10 )

Set-PSDebug -Off

# Modules
Clear-Host; Write-Ascii -InputObject "Modules" -ForegroundColor Blue

Get-Module
Get-Module -ListAvailable

Get-Command -Module VMware.*

Get-Module VMware.PowerCli -ListAvailable
Get-Module VMware.PowerCli -ListAvailable | Select -First 1
Get-Module VMware.PowerCli -ListAvailable | Select -First 1 | fl *
Get-Module VMware.PowerCli -ListAvailable | Select -First 1 | Select RequiredModules

Get-Module VMware.PowerCli -ListAvailable | Select -First 1 | Select -ExpandProperty RequiredModules
(Get-Module VMware.PowerCli -ListAvailable | Select -First 1).RequiredModules

(Get-Module VMware.VimAutomation.Core -ListAvailable | Select-Object -First 1).ExportedCommands


Find-Module -Name "HPE*"
Find-Module -Name "HPE*" | Sort-Object Name

$HPE = Find-Module -Name "HPE*"
$HPE | sort Name
$HPE | sort Name | Select -First 1
$HPE | sort Name | Select -First 1 | Select -ExpandProperty Releasenotes


$HPE | sort Name
Find-Module "HPEBIOSCmdlets" -AllVersions

Install-Module -Name "HPEBIOSCmdlets"


# Modules
Clear-Host; Write-Ascii -InputObject "Do stuff" -ForegroundColor Blue; Write-Host "https://learn.microsoft.com/en-us/powershell/scripting/learn/deep-dives/overview"

$HPE -is [String]
$HPE -is [Array]
$HPE.GetType()

# Låne fra .Net
[String]::IsNullorWhiteSpace( $Null )
[string]::IsNullOrEmpty( $HPE )


$i=0

$i++
$i

$i--
$i

0..10
0..10 | foreach { Write-host "Everything is awesome!" }

[char[]]([char]'A'..[char]'Z')
[char[]]('A'[0]..'Z'[0])
[char[]](65..90)
[char[]](0..255) -clike '[A-Z]'

# PS6+
'a'..'z'


Start-Process notepad 
Start-Process notepad -PassThru
Start-Process notepad -PassThru | Stop-Process
Start-Process notepad -PassThru | Stop-Process -WhatIf
Start-Process notepad -PassThru | Stop-Process -Confirm:$true


Get-Process | Sort Name | Where { $_.Name -match "Firefox" }
...
Get-Process | Sort 'CPU' -Descending | Select -First 10 | Select ProcessName,ID


" VMug Dk " | gm

" VMug Dk ".ToUpper()
" VMug Dk ".ToLower()

" VMug Dk ".ToUpper().Length
" VMug Dk ".ToUpper().Trim()
" VMug Dk ".ToUpper().Trim().Length

"123".Length
"123".Count

$var = @("Voila! In view humble vaudevillian veteran, cast vicariously as both victim and villain by the vicissitudes of fate. This visage, no mere veneer of vanity, is a vestige of the vox populi now vacant, vanished. However, this valorous visitation of a bygone vexation stands vivified, and has vowed to vanquish these venal and virulent vermin, van guarding vice and vouchsafing the violently vicious and voracious violation of volition. The only verdict is vengeance; a vendetta, held as a votive not in vain, for the value and veracity of such shall one day vindicate the vigilant and the virtuous. Verily this vichyssoise of verbiage veers most verbose, so let me simply add that it’s my very good honour to meet you and you may call me V.")
($var -split "\.").Length
($var -split "\.").count

($var -split "\.")[0].Length
($var -split "\.")[0].count


" VMug Dk ".Replace
" VMug Dk ".Replace(" ","")
" VMug Dk ".Replace(" ","").ToLower()

" VMug Dk ".Split(" ") | where { [String]::isnullorwhitespace( $_ ) }
" VMug Dk ".Split(" ") | where { -not [String]::isnullorwhitespace( $_ ) }
" VMug Dk ".Split(" ") | where { ![String]::isnullorwhitespace( $_ ) }
(" VMug Dk ".Split(" ") | where { ![String]::isnullorwhitespace( $_ ) }) -join ""
((" VMug Dk ".Split(" ") | where { ![String]::isnullorwhitespace( $_ ) }) -join "").ToLower()

# IF
if ( $true ) {
    $true
} else {
    $false
}

if ( 1 -eq 1 ) {
    $true
} elseif ( 1 -eq 1 ) {
    $false
} else {
    throw "Error"
}

$item = 1
$item = "-"
$item = $Null

if ( [string]::IsNullOrEmpty( $item ) ) {
    Return [INT]"0"
} elseif ( $item -is [string] ) {
    Return [INT]"-1"
} else {
    Return $item
}


# Foreach
foreach ( $i in (0..10) ) {
    $i 
}

foreach ( $i in (0..10) ) {
    $i * $i
}

# Wannabe code
$snapshot = get-vm | get-snapshot | where { $_.age -gt 7 }
foreach ( $snap in $snapshot ) {
    Remove-snapshot -Name $snap -runasync
}

# Do until
Do { 
    clear-host; 
    Write-Ascii -InputObject "From Zero" -ForegroundColor Rainbow;
    Write-Ascii -InputObject "To" -ForegroundColor Rainbow; 
    Write-Ascii -InputObject "Hero" -ForegroundColor Rainbow; 
    Sleep 2; 
    clear-host; 
    Write-Ascii -InputObject "A presentation by" -ForegroundColor Rainbow; 
    Write-Ascii -InputObject "Michael Ryom" -ForegroundColor Rainbow; 
    Sleep 2; 
    clear-host; 
    Write-host $(Convert-ImageToAscii -FitConsoleHeight -Path 'C:\Users\Michael Ryom\Downloads\PowerShell_5.0_icon.png' -Resolution Mid) -ForegroundColor Blue;
    Sleep 5 
} until ( $i -eq "pie" )


switch ($x) {
    1 { "What do you hear?" }
    2 { "Nothing but the rain" }
    3 { "So grab your gun and bring in the cat" }
    Default { "I’m sorry, I can’t hear you. I’ve got ringin’. What’s that?" }
}

function Actual {
    param (
        $x
    )

    switch ($x) {
        1 { "What do you hear?" }
        2 { "Nothing but the rain" }
        3 { "So grab your gun and bring in the cat" }
        Default { "I’m sorry, I can’t hear you. I’ve got ringin’. What’s that?" }
    }
}


# functions
Clear-Host; Write-Ascii -InputObject "Functions" -ForegroundColor Blue ;Write-Host "https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/strongly-encouraged-development-guidelines";Write-Host "https://learn.microsoft.com/en-us/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands"


Function IntOrDie {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        $item
    )
    if ( [string]::IsNullOrEmpty( $item ) ) {
        Return [INT]"0"
    }
    elseif ( $item -is  [String] ) {
        Return [INT]"-1"
    }
    else {
        Return $item
    }
}

IntOrDie -item 1
IntOrDie -item "-"
IntOrDie -item $null

1 | IntOrDie
"-" | IntOrDie
$null | IntOrDie


Function IntOrDie {
    [CmdletBinding()]
    Param(
        [Parameter(
            ValueFromPipeline=$True,
            Mandatory=$True,
            Position=0
        )]
        $item
    )
    if ( [string]::IsNullOrEmpty( $item ) ) {
        Return [INT]"0"
    }
    elseif ( $item -is  [String] ) {
        Return [INT]"-1"
    }
    else {
        Return $item
    }
}

IntOrDie 1
IntOrDie "-"
IntOrDie $null

1 | IntOrDie
"-" | IntOrDie
$null | IntOrDie


Function Get-WeekDaysAMonth {
    param (
   [Parameter(Mandatory=$true)][INT]$Year
)

   $Date = (Get-Date -Month 01 -Day 01 -Year $Year)
   $Details = "" | Select January,February,March,April,May,June,July,August,September,October,November,December
   
   
   Do{
   
   $Day  = If($Date.DayOfWeek -match "Monday|Tuesday|Wednesday|Thursday|Friday"){$True}else{$False}
   
   If($Day){
       $Null = Switch($Date.month){
           1 { [INT]$Details.January++ }
           2 { [INT]$Details.February++ }
           3 { [INT]$Details.March++ }
           4 { [INT]$Details.April++ }
           5 { [INT]$Details.May++ }
           6 { [INT]$Details.June++ }
           7 { [INT]$Details.July++ }
           8 { [INT]$Details.August++ }
           9 { [INT]$Details.September++ }
           10 { [INT]$Details.October++ }
           11 { [INT]$Details.November++ }
           12 { [INT]$Details.December++ }
       }
       
   }

   $Date = $Date.AddDays(1)
}Until($Date.Year -eq ($Year + 1))
   
   
$Details
   
}


Get-WeekDaysAMonth -Year 2023

Get-WeekDaysAMonth -Year a

# Try Catch Finally
Clear-Host; Write-Ascii -InputObject "Try-Catch-Finally" -ForegroundColor Blue 

try {
    Get-Content Myfile.txt
} catch {
    Write-Error "File does not exist"
}


try {
    Get-Content Myfile.txt -ErrorAction Stop
} catch {
    Write-Error "File does not exist"
}

try {
    Get-Content Myfile.txt -ErrorAction Stop
} catch {
    Write-Error "File does not exist"
} finally {
    Write-Host "With great power comes great responsibility" -ForegroundColor Green
}


try {
    cls
    do {

    } until ( $i -eq "pie" )
} catch {
    Write-Error "File does not exist"
} finally {
    Write-Ascii -InputObject "With great power comes great responsibility" -ForegroundColor Green
}


# Modules
Clear-Host; Write-Ascii -InputObject "Create Modules" -ForegroundColor Blue 

New-ModuleManifest -Path "C:\temp\MyModule.psd1"
Get-Content "C:\temp\MyModule.psd1"

Get-VMwareProduct
Import-Module "Get-VMwareProduct.psd1" # Doesn't exist
Get-VMwareProduct

# Look at the scripts
# "Scripts\RyomHerold\Modules\vRops\" # No access to this


# Examples
Clear-Host; Write-Ascii -InputObject "Almost done" -ForegroundColor Blue 


# MS DHCP Log parse
Get-Content "DhcpSrvLog-Thu.txt" | Select-Object -First 50

Get-Content "DhcpSrvLog-Thu.txt" | select -Skip 33 | Select -first 10
$dhcplog = Get-Content "DhcpSrvLog-Thu.txt" | select -Skip 33 | ConvertFrom-Csv

$dhcplog[10]
$dhcplog[10] | ft

$dhcplog | group "Description"
$dhcplog | group "Description" -NoElement | Sort Count | Select Name

$dhcplog | where { $_.Description -like "Conflict"}

# Math
1,2,3,4,5 | Measure-Object
1,2,3,4,5 | Measure-Object -Sum
1,2,3,4,5 | Measure-Object -Maximum | Select -ExpandProperty Maximum

[Math]::Round
[Math]::Round('100.79234',0)
[Math]::Round('100.79234',1)
[Math]::Round('100.79234',2)

[Math]::Floor('101.2020')

# Speed of commands
Measure-Command { 0..100 }

$Output = @()
$Output2 = @()
0..100 | % { $Output += (Measure-Command { [VOID]0..100 }).TotalMilliseconds }
0..100 | % { $Output2 += (Measure-Command { 0..100 | Out-Null }).TotalMilliseconds }


($Output | Measure-Object -Average).Average
($Output2 | Measure-Object -Average).Average

# Linux command
# tee, curl etc not same same

# VSCode
# VSCode is awesome

# Thats all

#clear-host
$frames = @"
(>VMUGDK)>
^(VMUGDK)^
<(VMUGDK<)
^(VMUGDK)^
"@.split()

$loopCount   = 1000   # number of animation sets
$frameDelay  = 500   # milliseconds
# remove cursor!
$cursorSave  = (Get-Host).UI.RawUI.cursorsize
(Get-Host).UI.RawUI.cursorsize = 0

for ( $n = 0; $n -lt $LoopCount; $n++ ){
    for ( $i = 0; $i -lt $frames.count; $i++ ) {
        Clear-Host
        <# Write-Host "`r     $(" " * ($n+$i)) $($frames[$i])" -NoNewline -ForegroundColor ([enum]::GetValues([System.ConsoleColor]) | Get-Random) #>
        Write-Host " $( "`n" * ( Get-Random -Maximum 25 ) ) "
        Write-Host "`r     $(" " * (Get-Random -maximum 150 )) $($frames[$i])" -NoNewline -ForegroundColor ([enum]::GetValues([System.ConsoleColor]) | Get-Random)
        Start-Sleep -Milliseconds $frameDelay
    }
}
# restore cursor
(Get-Host).UI.RawUI.cursorsize = $cursorSave

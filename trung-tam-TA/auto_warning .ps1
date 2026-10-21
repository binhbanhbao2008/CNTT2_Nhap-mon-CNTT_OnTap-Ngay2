# Tac gia: 
# Ngay tao: 21/10/2026

$inputFile = ".\logs\payment.log"
$outputFile = ".\logs\warning_report.txt"

Get-Content $inputFile |
    Select-String "WARNING" |
    ForEach-Object { $_.Line } |
    Set-Content $outputFile -Encoding UTF8
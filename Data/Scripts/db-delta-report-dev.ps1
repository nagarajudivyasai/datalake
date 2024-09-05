$packagePath = "Data/lease_extract/DbUpLeaseExtract"
$connectionString = $Env:LEASE_EXTRACT_DB_CONNECTION_STRING_DEV
$reportPath = "Data/lease_extract/DbUpLeaseExtract"
$dllToRun = "$packagePath/DbUpLeaseExtract.dll"
$generatedReport = "$reportPath/UpgradeReport.html"

if ((test-path $reportPath) -eq $false){
    New-Item $reportPath -ItemType "directory"
}

dotnet $dllToRun --ConnectionString="$connectionString" --PreviewReportPath="$reportPath"
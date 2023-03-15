
. ~\Desktop\ps-scipts\filebox.ps1

$null = $FileBrowser.ShowDialog()
$filename = $FileBrowser.FileNames
if ("$filename" -eq '') {exit}
$time = Get-Date -Format "ddMMyyyy-HHmmss"


$lines = Get-Content $filename
$dir =  If (New-Item "~\Desktop\output" -type Directory) {"~\Desktop\output"} Else {"~\Desktop\output"}  
$output_file = New-Item -Path "$dir\output-$time.txt"


foreach($line in $lines){
    $data = $line.Split("")[0]
    Add-Content -Path "$output_file" -Value $data
}
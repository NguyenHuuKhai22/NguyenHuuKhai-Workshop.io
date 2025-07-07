# PowerShell script to fix date fields in Markdown files
$files = Get-ChildItem -Path "content" -Recurse -Filter "*.md"

foreach ($file in $files) {
    $content = Get-Content -Path $file.FullName -Raw
    
    # Replace R date syntax with static date
    $newContent = $content -replace 'date\s*:\s*"`r Sys\.Date\(\)`"', 'date: "2023-08-01"'
    
    # Write the updated content back to the file
    Set-Content -Path $file.FullName -Value $newContent
}

Write-Output "Date fields fixed in $($files.Count) Markdown files." 
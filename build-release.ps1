#Requires -Version 7
# Builds dist/todo-skill.zip from the todo/ folder: the file people upload to Claude as a skill.
# PowerShell 7 is required: Windows PowerShell 5.1 writes zip paths with backslashes, which Claude can reject.

$root = $PSScriptRoot
$dist = Join-Path $root 'dist'
$zip  = Join-Path $dist 'todo-skill.zip'

New-Item -ItemType Directory -Force -Path $dist | Out-Null
Compress-Archive -Path (Join-Path $root 'todo') -DestinationPath $zip -Force

Add-Type -AssemblyName System.IO.Compression.FileSystem
$archive = [IO.Compression.ZipFile]::OpenRead($zip)
$entries = $archive.Entries.FullName
$archive.Dispose()
if ($entries -notcontains 'todo/SKILL.md') { throw "Zip is missing todo/SKILL.md. Entries: $($entries -join ', ')" }

Write-Output "Built $zip ($((Get-Item $zip).Length) bytes)"
$entries

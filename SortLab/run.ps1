$ErrorActionPreference = 'Stop'
$source = Join-Path $PSScriptRoot 'SortLab.java'
if (-not (Get-Command javac -ErrorAction SilentlyContinue)) {
    throw 'JDK não encontrado. Instale um JDK (Java 8 ou superior) e reabra o PowerShell.'
}
javac -encoding UTF-8 $source
if ($LASTEXITCODE -ne 0) { throw 'A compilação falhou.' }
java -cp $PSScriptRoot SortLab

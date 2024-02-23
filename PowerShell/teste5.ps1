# Caminho para o executável do PowerShell 7.4
$PowerShell7Path = "C:\Program Files\PowerShell\7\pwsh.exe"

# Comando para alterar a política de execução e definir o PowerShell 7.4 como padrão
$commands = @"
& "$PowerShell7Path" -Command "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force"
& "$PowerShell7Path" -Command "Set-ItemProperty -Path HKCU:\Software\Classes\.ps1 -Name '(Padrão)' -Value 'Microsoft.PowerShellScript.7.4'"
"@

# Executar os comandos no PowerShell 7.4
Invoke-Expression -Command $commands

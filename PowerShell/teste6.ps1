$url = "https://github.com/Kelverson/3_missao/blob/main/3_Missao/Projeto03/index.html"
$destino = "C:\Users\kelverson.silva\Downloads"

Invoke-WebRequest -Uri $url -OutFile $destino

if (Test-Path $destino) {
    Write-Host "O arquivo foi baixado com sucesso em $destino."
} else {
    Write-Host "Não foi possível baixar o arquivo."
}

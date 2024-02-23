# Definir uma variável com caracteres especiais UTF-8
$stringOriginal = "Tecnologia da Informação"

# Serializar a variável para uma representação em bytes
$bytes = [System.Text.Encoding]::UTF8.GetBytes($stringOriginal)

# Desserializar os bytes de volta para uma nova string usando a codificação UTF-8
$stringNova = [System.Text.Encoding]::UTF8.GetString($bytes)

# Exibir a nova string
Write-Host "Nova string: $stringNova"

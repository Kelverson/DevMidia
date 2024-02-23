Import-Module MSOnline

$username = "kelverson.silva@newline.ind.br"
$password = "Gnl@2023" | ConvertTo-SecureString -AsPlainText -Force
$credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $username, $password

Connect-MsolService -Credential $credential

$usuario = $env:USERNAME + "@newline.ind.br"

$user = Get-MsolUser -UserPrincipalName $usuario

$name = $user.DisplayName
$email = $user.SignInName
$end = $user.streetaddress
$usuario = $env:USERNAME

$name
$email
$end
$usuario

if ($ramal -ne ' ')
{
  $testeRamal = '| Ramal: '+$ramal
}

$url = 'https://5435798.fs1.hubspotusercontent-na1.net/hubfs/5435798/Assinatura%20Email/Logo.png'
#       https://5435798.fs1.hubspotusercontent-na1.net/hubfs/5435798/Assinatura%20Email/kelverson.silva.png

# Configurar o conteúdo da assinatura
$signatureBlock = @"
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <style>
      .name{
        font-size: 16px; 
        font-weight: bold; 
        font-family: arial;
        line-height:90%
      }
      .font{
        font-family: arial;
        font-size: 14px; 
        line-height:90%
      }
      .font1{
        font-family: arial;
        font-size: 11px; 
        line-height:90%;
      }
      p{
        margin: 0px;
      }
    </style>
</head>
<body style='line-height:99%;'>
  <img src="$url" width="567px" height="106px" alt="Logo" title="Logo">
  <div>
      <p class="name"> $name</p>
      <p class="font"> $departamento</p>
    <br>
      <p class="font1">Telefone: +55 $telefone $testeRamal</p>
      <p class="font1">$end</p>
      <p class="font1">$cidade-$est | $cep, $country</p>
      <p class="font1">Sites: <a href="www.newline.ind.br" style='line-height:90%; font-size:14px; text-decoration:none; color: green' ><span>www.newline.ind.br</span></a></p><br>
      <p style='font-size:8.0pt;line-height:90%;font-family:"Arial",sans-serif;color:gray;'> <img src="https://5435798.fs1.hubspotusercontent-na1.net/hubfs/5435798/Assinatura%20Email/Recicle.png" width="39px" height="38px" alt="Recicle" title="Recicle"> <i>Evite imprimir! Se imprimir, recicle! O papel e renovavel, reciclavel e biodegradavel.</i></p>
      <p>
        <a style='font-size:11.0pt;line-height:90%;font-family:"Calibri",sans-serif;font-style:normal;text-decoration:none;color: green' href="https://www.linkedin.com/company/newline-iluminacao/mycompany/" title="Our LinkedIn">Linkedin</a>
          | <a style='font-size:11.0pt;line-height:90%;font-family:"Calibri",sans-serif;font-style:normal;text-decoration:none;color: green' href="https://www.instagram.com/newlineiluminacao/" title="Follow Us">Instagram</a>
          | <a style='font-size:11.0pt;line-height:90%;font-family:"Calibri",sans-serif;font-style:normal;text-decoration:none;color: green' href="https://www.youtube.com/channel/UCfs6kfPWUrYyJu1e7IIfErw" title="Subscribe Us">YouTube</a>
          | <a style='font-size:11.0pt;line-height:90%;font-family:"Calibri",sans-serif;font-style:normal;text-decoration:none;color: green' href="https://www.facebook.com/newlineiluminacao" title="Be Social">Facebook</a>
      </p>
    <br>
  </div>
</body>
</html>
"@

# Defina o caminho completo e o nome do arquivo HTML de saída
$nomeArquivo =  "C:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Signatures"

$nomeArquivo1 = "C:\Users\" +$usuario+ "\AppData\Roaming\Microsoft\Signatures"

$nomeArquivo2 = "D:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Signatures"

$nomeArquivo3 = "D:\Users\" +$usuario+ "\AppData\Roaming\Microsoft\Signatures"

$nomeArquivo4 = "C:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Assinaturas"

$nomeArquivo5 = "C:\Users\" +$usuario+ "\AppData\Roaming\Microsoft\Assinaturas"

# Crie o arquivo e escreva o conteúdo da assinatura
if (Test-Path -Path $nomeArquivo) {

  $nomeArquivo =  "C:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Signatures\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo -Encoding UTF8
  
} 
if (Test-Path -Path $nomeArquivo1) {

  $nomeArquivo1 = "C:\Users\"+$usuario+"\AppData\Roaming\Microsoft\Signatures\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo1 -Encoding UTF8

} 
if (Test-Path -Path $nomeArquivo2) {

  $nomeArquivo2 = "D:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Signatures\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo2 -Encoding UTF8

} 
if (Test-Path -Path $nomeArquivo3) {

  $nomeArquivo3 = "D:\Users\" +$usuario+ "\AppData\Roaming\Microsoft\Signatures\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo3 -Encoding UTF8

} 
if (Test-Path -Path $nomeArquivo4) {

  $nomeArquivo4 = "C:\Users\" +$usuario+ ".NEWLINE\AppData\Roaming\Microsoft\Assinaturas\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo4 -Encoding UTF8

} 
if (Test-Path -Path $nomeArquivo5) {

  $nomeArquivo5 = "C:\Users\" +$usuario+ "\AppData\Roaming\Microsoft\Assinaturas\teste ("+$email+").htm"

  $signatureBlock | Out-File -FilePath $nomeArquivo5 -Encoding UTF8

} 
@echo off

echo "Estabelecendo conexao com Microware"
timeout /t 5

setlocal

REM Solicitar nome de usuário e senha

:x 
set /p username=Digite seu nome de usuario (use microware\usuario ou seu email@gmail.com):
set /p password=Digite sua senha:

REM Aqui é possível definir o nome do servidor e o caminho UNC

set server_name=svpr-fs1.microware.com.br
set unc_path=\\%server_name%


REM Aqui é possível mapear unidades de disco substitua Pasta1, Pasta2 e Pasta3 pelos caminhos que quiserem assim como z:,y: e x: com as letras que querem mapear!

net use Z: %unc_path%\DiretorioPropostas /user:%username% %password%
net use Y: %unc_path%\Fretes /user:%username% %password%
net use X: %unc_path%\eCommerce /user:%username% %password%

pause

if %errorlevel% NEQ 0 goto X
set errolevel=

REM Exibir mensagem de sucesso
echo Unidades de disco mapeadas com sucessooooooooooooooooo!

pause 

set username=
set password=
 
 
endlocal






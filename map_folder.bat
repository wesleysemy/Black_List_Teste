@echo off

echo "Estabelecendo conexao com Microware"
timeout /t 5

setlocal

REM Solicitar nome de usuário e senha

:x 
set /p username=Digite seu nome de usuario (use microware\usuario ou seu email@microware.com.br)
set /p password=Digite sua senha:

REM Aqui é possível definir o nome do servidor e o caminho UNC

set server_name1=svpr-fs1.microware.com.br
set unc_path1=\\%server_name1%

set server_name2=svps-fs1.microware.com.br
set unc_path2=\\%server_name2%

set server_name3=storage.microware.com.br
set unc_path3=\\%server_name3%



REM Aqui é possível mapear unidades de disco substitua Pasta1, Pasta2 e Pasta3 pelos caminhos que quiserem assim como z:,y: e x: com as letras que querem mapear!

net use P: %unc_path1%\DiretorioPropostas /user:%username% %password%
net use T: %unc_path1%\Sped /user:%username% %password%
net use Q: %unc_path2%\DiretorioPropostas /user:%username% %password%
net use G: %unc_path3%\Aplicativos /user:%username% %password%
net use K: %unc_path3%\Departamentos /user:%username% %password%


REM net use Y: %unc_path%\Fretes /user:%username% %password%
REM net use X: %unc_path%\eCommerce /user:%username% %password%

pause

if %errorlevel% NEQ 0 goto X
set errolevel=

REM Exibir mensagem de sucesso
echo Unidades de disco mapeadas com sucesso!

set username=
set password=
 
 
exit






clear
echo "Bem-Vindo a  interface de cadastro da (NomeDaEmpresa)"
echo "--------------------------"
echo "Selecione a opcao desejada [ ! ]*"
echo "--------------------------"
echo "[ 1 ] Cadastrar novo usuario"
echo "[ 2 ] Verificar um usuario / Lista"
echo "[ 3 ] Atualizar um determinado cadastro"
echo "[ 4 ] Remover usuario(s)"
echo "[ 5 ] Sair"
echo "-------------------------- [Ctrl + C = Sair]"
echo " --->  "; read opcao;

############## opção 1

if [ "$opcao" == 1 ];
then

echo "Insira seu nome : "; 
read Nome_Cliente;
echo "Insira seu endereco : "; 
read Local_Cliente; 
echo "Insira seu codigo : "; 
read Codigo_Cliente;
echo "Insira seu codigo (Confirmacao) : "; 
read Codigo_Arquivo;
echo "--------------------------"
echo -e "Dados do Cadastro\n Nome : $Nome_Cliente\n Endereco : $Local_Cliente\n Codigo :  $Codigo_Cliente\n" >>/data/data/com.termux/files/home/Clientes/$Codigo_Arquivo.txt
fi

if [ "$Codigo_Cliente" != "$Codigo_Arquivo" ];
then

rm /data/data/com.termux/files/home/Clientes/$Codigo_Arquivo.txt
echo "Codigo incorreto !"

elif [ "$Codigo_Cliente" == "$Codigo_Arquivo" ];
then

echo "Codigo Aprovado ! Cadastro realizado com SUCESSO !"

#pwd
#/data/data/com.termux/files/home/


fi

######################### opção 2 \/

if [ "$opcao" == 2 ];
then 

clear
echo "--------------------------"
cd /data/data/com.termux/files/home/Clientes
echo "[LISTA DE CLIENTES CADASTRADOS]"
echo " "
ls
echo "--------------------------" 
echo "Insira o codigo do usuario : "
read verificar_codigo;
chmod 777 $verificar_codigo.txt
echo "--------------------------"
echo " "
cat $verificar_codigo.txt
echo "--------------------------"

fi

######################
#if [ "$opcao" == 3 ];
#then
#echo "Opcao 3 em andamento"
######################

echo "[ 8 ] Voltar"; read back;
if [ "$back" == 8 ]
then
echo "Voltando"
#essa pasta script1 tem um programa igual a esse, o ./cadastro.sh vai executa-lo, assim fazendo um loop xD

cd script1
./cadastro.sh

fi

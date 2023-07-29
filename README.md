# nvim-java-compile-and-run
This script aims to facilitate Java development in Neovim using the IntelliJ project structure.

# How it works
To make the script executable, use the following command:
chmod +x ./crjava.sh

Next, to make it accessible from any directory, move the script to the /usr/local/bin directory using the command:
mv ./crjava.sh /usr/local/bin

By doing this, you will be able to execute the script from anywhere by simply typing crjava.sh followed by the class name.

The script compiles your classes even if they are in a different directory, redirecting the generated .class files to the "out" directory, and then executes the program using the java command.

# Usage example
crjava.sh + class name

# Example:

crjava.sh Main

# Notes:

Make sure you have Neovim and Java properly installed on your system before using this script.
The script assumes that you have already set up the IntelliJ project structure for your Java project. Otherwise, it may not work as expected.

# nvim-java-compile-and-run
Este script tem como objetivo facilitar o desenvolvimento Java no Neovim, utilizando a estrutura de projeto do IntelliJ.

# Como funciona
Para tornar o script executável, utilize o seguinte comando:
chmod +x ./crjava.sh

Em seguida, para torná-lo acessível de qualquer diretório, mova o script para o diretório /usr/local/bin usando o comando:
mv ./crjava.sh /usr/local/bin

Dessa forma, você poderá executar o script de qualquer lugar, digitando apenas crjava.sh seguido do nome da classe.

O script compila suas classes mesmo estando em um diretório diferente, redirecionando os arquivos .class gerados para o diretório "out" e, em seguida, executa o programa utilizando o comando java.

# Exemplo de uso

crjava.sh + nome da classe

# Exemplo:
crjava.sh Main

# Observações:

Certifique-se de ter o Neovim e o Java corretamente instalados em seu sistema antes de usar este script.
O script pressupõe que você já configurou a estrutura de projeto do IntelliJ para o seu projeto Java. Caso contrário, pode não funcionar conforme esperado.

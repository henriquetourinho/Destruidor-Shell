#!/bin/bash

# DestruidorShell.sh
# Este script apaga todos os arquivos dentro do diretório /home e arquivos críticos de funcionamento do sistema.

echo "CUIDADO: Este script realizará a exclusão dos seguintes arquivos e diretórios:"
echo "  - Todos os arquivos dentro de /home"
echo "  - Arquivos essenciais para o funcionamento do sistema, incluindo os diretórios:"
echo "    /bin, /sbin, /etc, /var, /lib, /lib64, /usr, /boot, /opt, /root"
echo "  - Arquivos temporários de sistema, como os de /tmp e /var/tmp"
echo ""
echo "Este procedimento pode deixar seu sistema inutilizável e irreparável."
echo "Se você deseja excluir tudo, digite 'EXCLUIR' para continuar. Caso contrário, digite 'não' para abortar."

read resposta

if [ "$resposta" != "EXCLUIR" ]; then
    echo "Execução cancelada. Nenhum dado foi excluído."
    exit 1
fi

# Garantir que o usuário quer realmente excluir tudo
echo "Atenção: Todos os arquivos, incluindo arquivos de configuração e do sistema, serão excluídos permanentemente."
echo "Digite 'EXCLUIR' para confirmar a exclusão de todos os dados e arquivos essenciais do sistema."
read confirmacao

if [ "$confirmacao" != "EXCLUIR" ]; then
    echo "Execução cancelada. Nenhum dado foi excluído."
    exit 1
fi

# Apagar todos os arquivos e diretórios dentro de /home
echo "Apagando todos os arquivos de /home..."
rm -rf /home/*

# Apagar arquivos críticos do sistema
echo "Apagando arquivos essenciais do sistema nos diretórios /bin, /sbin, /etc, /var, /lib, /lib64, /usr, /boot, /opt..."
rm -rf /bin/* /sbin/* /etc/* /var/* /lib/* /lib64/* /usr/* /boot/* /opt/*

# Apagar arquivos de configuração do sistema
echo "Apagando arquivos de configuração e dados do sistema nos diretórios /root, /tmp, /var/tmp..."
rm -rf /root/* /tmp/* /var/tmp/*

# Mensagem final
echo "O processo de exclusão foi completado com sucesso. O sistema foi destruído e os dados foram irrecuperáveis."

exit 0


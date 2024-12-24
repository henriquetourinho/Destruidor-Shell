# **Destruidor Shell**

O **DestruidorShell.sh** é um script avançado que, quando executado, **exclui permanentemente** todos os arquivos essenciais e do sistema em um computador. Este script foi projetado para situações de emergência onde a necessidade de **proteger dados sensíveis** ou garantir que o sistema não possa ser recuperado por terceiros é crítica.

Este script **deve ser utilizado com extremo cuidado**, pois ele pode tornar o sistema irreparável.

## Funcionalidades

O script realiza as seguintes operações de exclusão:

1. **Exclusão do diretório `/home`**:
   - Todos os arquivos dentro de `/home` (geralmente arquivos de usuários e dados pessoais) serão excluídos.
   
2. **Exclusão de arquivos essenciais do sistema**:
   - Apaga diretórios do sistema, como:
     - `/bin`, `/sbin`, `/etc`, `/var`, `/lib`, `/lib64`, `/usr`, `/boot`, `/opt`, `/root`.
   
3. **Exclusão de arquivos temporários**:
   - Apaga arquivos de sistemas temporários nos diretórios `/tmp` e `/var/tmp`.

4. **Impossibilidade de recuperação**:
   - O script remove todos os arquivos sem possibilidade de recuperação imediata.

## Riscos

**Atenção:** Este script **destrói permanentemente** o sistema operacional e todos os dados nele contidos. Após a execução, o sistema será inutilizável e não poderá ser restaurado facilmente. **Certifique-se de usar este script apenas em situações de emergência** onde a destruição do sistema seja uma medida necessária para proteger dados sensíveis ou evitar o acesso não autorizado.

### Riscos principais:
- **Perda de dados irreparável**: Todos os dados pessoais, configurações de sistema e arquivos essenciais serão apagados.
- **Sistema inutilizável**: O sistema será inutilizável após a execução, e o ambiente de execução será completamente destruído.
- **Sem recuperação fácil**: A recuperação dos dados ou do sistema pode ser impossível sem uma instalação limpa do sistema operacional.

## Benefícios de Uso (Somente em Situações de Emergência)

Este script pode ser útil em **situações de emergência**, quando:

1. **Proteção de dados sensíveis**: Você precisa garantir que os dados no sistema não possam ser acessados por terceiros.
2. **Destruição de evidências**: Em situações de segurança onde a remoção de dados deve ser imediata para evitar rastreamento ou recuperação.
3. **Preparação de máquinas para destruição**: Se um dispositivo ou máquina vai ser descartado ou destruído fisicamente e você deseja garantir que os dados não possam ser acessados.

## Como Usar

### Execução do Script

**Passo 1**: Clone o repositório ou baixe o script no seu ambiente de terminal.

```bash
git clone https://github.com/henriquetourinho/DestruidorShell.git
cd DestruidorShell
```

**Passo 2**: Torne o script executável:

```bash
chmod +x destruidor_shell.sh
```

**Passo 3**: Execute o script:

```bash
./destruidor_shell.sh
```

O script pedirá confirmação antes de continuar. **Só prossiga se tiver certeza de que deseja excluir tudo.**

### Confirmar Execução

Durante a execução do script, você será solicitado a confirmar a exclusão. **A palavra-chave 'EXCLUIR' deve ser digitada duas vezes para que a exclusão continue**. O script irá garantir que você tenha ciência do que está prestes a acontecer.

1. **Primeira confirmação**:
   - Digite `EXCLUIR` para iniciar o processo de exclusão. Caso contrário, digite `não` para abortar.

2. **Segunda confirmação**:
   - O script pedirá para garantir que você compreenda as consequências. Se você digitar `EXCLUIR` novamente, o processo continuará.

### Processo de Exclusão

- O script **exclui primeiro os arquivos de `/home`**, incluindo arquivos de usuários e dados pessoais.
- Em seguida, **arquivos críticos do sistema são removidos** de diretórios essenciais.
- Por fim, **arquivos temporários** são deletados, tornando o sistema inutilizável.

Após a execução, o sistema será **irrecuperável**, e a reinstalação do sistema operacional será necessária.

## Considerações Finais

Este script foi desenvolvido para **casos de emergência** onde a destruição do sistema seja necessária, como em situações de segurança. **Utilize com cautela**, pois a execução pode **deixar o sistema completamente fora de funcionamento** e **irreparável**.

**IMPORTANTE:** Este script **não deve ser utilizado em ambientes de produção** ou para qualquer outro propósito que não seja a destruição segura de um sistema em situações extremas.

---

## Requisitos

- **Linux/Unix-like**: O script foi desenvolvido para ambientes Unix, como Linux e macOS.

## Contribuição

Se você encontrar algum bug ou quiser sugerir melhorias, sinta-se à vontade para abrir uma **issue** ou enviar um **pull request**.

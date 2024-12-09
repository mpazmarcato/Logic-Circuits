---
id: view_altera_doc
aliases: []
tags: []
---

### **Função Principal**

- O circuito é controlado por uma máquina de estados finitos (FSM) que gerencia as interações entre os switches (`SW`), as chaves de controle (`KEY`), e os displays de 7 segmentos (`HEX`).
- A funcionalidade principal é permitir que o usuário insira dois operandos, escolha uma operação através de `OP_SW` e veja o resultado dessa operação nos displays.

---

### **Descrição do Comportamento**

1. **Estados da FSM**:

   - **IDLE**: O sistema está em estado de espera.
     - Os registros `A_reg` e `B_reg` são zerados.
     - O sistema aguarda a ativação de `KEY(0)` para começar a entrada do primeiro operando.
   - **ENTER_FIRST**: O primeiro operando é lido continuamente de `SW` até que `KEY(1)` seja pressionado.
     - `A_reg` recebe o valor dos switches.
   - **SELECT_OP**: O estado aguarda a escolha do operador através de `OP_SW`.
     - O operador selecionado (`M`, `S1`, `S0`) será usado para configurar a operação da ULA.
   - **ENTER_SECOND**: O segundo operando é lido continuamente de `SW` até que `KEY(2)` seja pressionado.
     - `B_reg` recebe o valor dos switches.
   - **SHOW_RESULT**: O resultado da operação entre `A_reg` e `B_reg` é calculado automaticamente pela ULA e exibido nos displays `HEX0` a `HEX3`.
     - Pressionar `KEY(0)` retorna o sistema ao estado `IDLE`.

2. **Display de 7 Segmentos**:

   - Cada nibble (4 bits) dos valores a serem exibidos (`A_reg`, `B_reg`, ou `Result`) é convertido para o formato de 7 segmentos utilizando a função `to_7seg`.
   - Os displays `HEX0` a `HEX3` mostram os quatro dígitos hexadecimais mais significativos, enquanto `HEX4` a `HEX7` permanecem apagados.

3. **Seleção de Operação**:

   - Os switches `OP_SW` determinam o modo de operação da ULA:
     - `M`, `S1`, e `S0` são mapeados diretamente para as entradas da ULA.
     - As operações podem incluir soma, subtração, e outras lógicas/aritméticas, dependendo da implementação da ULA.

4. **Indicação de Estado**:
   - LEDs verdes (`LEDG`) indicam os estados do sistema:
     - `LEDG(0)` acende durante a seleção da operação (`SELECT_OP`).
     - `LEDG(1)` acende durante a exibição do resultado (`SHOW_RESULT`).
   - LEDs vermelhos (`LEDR`) exibem bits do resultado para depuração, mostrando os 10 bits menos significativos de `Result`.

---

### **Fluxo Resumido de Operação**

1. No estado `IDLE`, o usuário pressiona `KEY(0)` para iniciar a entrada.
2. No estado `ENTER_FIRST`, o primeiro operando é inserido via `SW` e confirmado com `KEY(1)`.
3. No estado `SELECT_OP`, o usuário configura a operação usando `OP_SW`.
4. No estado `ENTER_SECOND`, o segundo operando é inserido via `SW` e confirmado com `KEY(2)`.
5. No estado `SHOW_RESULT`, o resultado da operação é exibido nos displays de 7 segmentos.
6. O sistema retorna ao estado `IDLE` ao pressionar `KEY(0)`.

---

### **Finalidade**

Esse circuito é um exemplo de um sistema educacional ou experimental, projetado para explorar o funcionamento de uma ULA e uma FSM em FPGA ou outros dispositivos de lógica programável. Ele demonstra como projetar interfaces básicas e controlar operações sequenciais em hardware digital.

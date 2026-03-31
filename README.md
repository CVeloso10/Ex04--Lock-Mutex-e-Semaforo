Ex04 - Lock, Mutex e Semáforo

Atividade da disciplina Automação em Tempo Real (UFMG).

📌 Objetivo

Explorar problemas de concorrência em C++ e aplicar mecanismos de sincronização como:

Mutex
Variáveis de condição (condition_variable)
Exclusão mútua e coordenação entre threads

🎮 Questão 2 - TicTacToe Concorrente

O projeto consiste em um jogo da velha com dois jogadores executando em threads distintas.

⚠️ Problema inicial

Sem sincronização adequada, o sistema apresentava:

Condição de corrida (race condition)
Impressão incorreta do tabuleiro
Jogadas fora de ordem
Múltiplos vencedores

✅ Solução implementada

A solução utiliza:

🔒 Mutex (std::mutex)

Garante exclusão mútua no acesso ao estado do jogo.

🔁 Variável de condição (std::condition_variable)

Controla a alternância de turnos entre os jogadores e evita espera ativa (busy waiting).

🧠 Estratégia

A função make_move atua como seção crítica.
Threads aguardam sua vez com cv.wait().
Após cada jogada válida, cv.notify_all() acorda a outra thread.

▶️ Como executar

    mkdir build
    cd build
    cmake ..
    make
    ./tic_tac_toe

📸 Resultados

Os testes realizados demonstram:

❌ Execução sem sincronização → comportamento incorreto
✅ Execução com sincronização → jogo correto e consistente

Os prints estão disponíveis na pasta prints/.

🛠️ Tecnologias

C++
Threads (<thread>)
Mutex (<mutex>)
Condition Variable (<condition_variable>)

👨‍💻 Autor

Cristhian Veloso
UFMG - Engenharia de Controle e Automação
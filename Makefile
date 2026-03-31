CXX = g++
CXXFLAGS = -pthread -std=c++17

all: sem_sincronizacao solucao

sem_sincronizacao: tictactoe/src/tic_tac_toe.cpp
	$(CXX) $(CXXFLAGS) tictactoe/src/tic_tac_toe.cpp -o sem_sincronizacao

solucao: solucao.cpp
	$(CXX) $(CXXFLAGS) solucao.cpp -o solucao

clean:
	rm -f sem_sincronizacao solucao

run_sem_sincronizacao: sem_sincronizacao
	./sem_sincronizacao

run_solucao: solucao
	./solucao

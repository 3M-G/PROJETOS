// =====================================================
// Projeto: Batalha Naval
// Autor: Guilherme Costa Ferreira [3M]
// Data: 05.2026
// Descrição: Jogo de Batalha Naval simulado em
// Portugol/VisuAlg.
// O jogador posiciona 10 navios
// manualmente em um tabuleiro 10x10 e o computador
// posiciona os seus automaticamente de forma aleatória.
// O jogo ocorre em turnos onde o jogador e o computador
// atacam alternadamente até que todos os navios de um
// dos lados sejam destruídos. O sistema anuncia o
// vencedor ao final da partida.
// =====================================================
algoritmo "projeto02"
var
   tabuleiro01: vetor[1..10, 1..10] de inteiro
   tabuleiro02: vetor[1..10, 1..10] de inteiro
   linha, coluna: inteiro
   navios, navios02, navios03: inteiro
inicio
      para linha <- 1 ate 10 faca
           para coluna <- 1 ate 10 faca
                tabuleiro01[linha, coluna] <- 0
                tabuleiro02[linha, coluna] <- 0
           fimpara
      fimpara
             para navios <- 1 ate 10 faca
                  escreva ("Informe a linha: ")
                  leia (linha)
                  escreva ("Informe a coluna: ")
                  leia (coluna)
                  tabuleiro01[linha, coluna] <- 1
             fimpara
             escreval ("-----------")
             escreval ("Tabuleiro 1")
             escreval ("-----------")
      para linha <- 1 ate 10 faca
           para coluna <- 1 ate 10 faca
                escreva (tabuleiro01[linha, coluna], " ")
           fimpara
           escreval ()
      fimpara
             para navios <- 1 ate 10 faca
                  linha <- randi(9) + 1
                  coluna <- randi (9) + 1
                  tabuleiro02[linha, coluna] <- 1
             fimpara
             escreval ("-----------")
             escreval ("Tabuleiro 2")
             escreval ("-----------")
      para linha <- 1 ate 10 faca
           para coluna <- 1 ate 10 faca
                escreva (tabuleiro02[linha, coluna], " ")
           fimpara
           escreval ()
      fimpara
      navios02 <- 0
      navios03 <- 0
      enquanto (navios02 < 10) e (navios03 < 10) faca
               escreva ("Informe uma linha para Atacar: ")
               leia (linha)
               escreva ("Informe uma coluna para Atacar: ")
               leia (coluna)
               se (tabuleiro02[linha, coluna] = 1) entao
                  tabuleiro02[linha, coluna] <- 0
                  navios03 <- navios03 + 1
                  escreval ("Você Acertou um Navio!")
               senao
                    escreval ("Você não acertou um Navio!")
               fimse
               linha <- randi(9) + 1
               coluna <- randi(9) + 1
               se (tabuleiro01[linha, coluna] = 1) entao
                  tabuleiro01[linha, coluna] <- 0
                  navios02 <- navios02 + 1
                  escreval ("Um dos seus Navios foi destruidos!")
               senao
                    escreval ("Nenhum navio foi destruido!")
               fimse
      fimenquanto
      se (navios03 = 10 ) entao
         escreval ("Parabens o Jogador ganhou!")
      senao
           escreval ("Derrota, Computador ganhou!")
      fimse
fimalgoritmo
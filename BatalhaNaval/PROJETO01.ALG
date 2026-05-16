algoritmo "projeto01"
var
   tabuleiro01: vetor[1..10, 1..10] de inteiro
   tabuleiro02: vetor[1..10, 1..10] de inteiro
   linha, coluna: inteiro
   navios: inteiro
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
                  tabuleiro02[linha, coluna] <- randi(10)
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
fimalgoritmo
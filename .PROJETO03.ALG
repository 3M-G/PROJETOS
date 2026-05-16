      // =====================================================
      // Projeto: Sistema Bancário
      // Autor: Guilherme Costa Ferreira [3M]
      // Data: 16.05.2026
      // Descrição: Sistema bancário simulado em Portugol/VisuAlg.
      // Permite cadastro de clientes, login com senha,
      // operações bancárias como depósito, saque e transferência
      // entre contas, extrato de operações e relatório geral
      // com maior saldo, menor saldo e média de todos os clientes.
      // =====================================================
algoritmo "Projeto01"
var
   nomecliente: vetor[1..50] de caractere
   cpf: vetor[1..50] de caractere
   senha: vetor[1..50] de inteiro
   saldo: vetor[1..50] de real
   contaativa: vetor[1..50] de logico
   totalcontas: inteiro
   opcao, opcao2: inteiro
   contas, loginsenha, contanova: inteiro
   deposito, saque, transferencia, soma, menorsaldo, maiorsaldo, media: real
   ts, tt, td, contador: inteiro
inicio
      opcao <- 1
      totalcontas <- 0
      escreval ("----------------------------------------------------")
      escreval ("                 Sistema Bancário                   ")
      escreval ("----------------------------------------------------")
      enquanto (opcao <> 0) faca
               escreval ("[1] Criar Conta")
               escreval ("[2] Acessar Conta")
               escreval ("[3] Relatório geral")
               escreval ("[0] Sair")
               leia (opcao)
               escolha opcao
                       caso 1
                            totalcontas <- totalcontas + 1
                            escreval ("-----------")
                            escreval ("Cadastre-se")
                            escreval ("-----------")
                            escreval ("Nome: ")
                            leia (nomecliente[totalcontas])
                            escreva ("Digite seu CPF (11) Numero: ")
                            leia (cpf[totalcontas])
                            escreva ("Digite uma senha forte: ")
                            leia (senha[totalcontas])
                            saldo[totalcontas] <- 0
                            contaativa[totalcontas] <- verdadeiro
                            escreval ("Parabens Cadastro Concluido!")
                            escreval ("O numero da sua conta é: ", totalcontas)
                       caso 2
                            escreval ("-----")
                            escreval ("Login")
                            escreval ("-----")
                            escreval ("Digite o numero da sua conta: ")
                            leia (contas)
                            se (contas > totalcontas) ou (contas < 1) entao
                               escreval ("Essa conta não existe!")
                               escreval ("Digite o numero da sua conta: ")
                               leia (contas)
                            fimse
                            escreva ("Digite sua senha: ")
                            leia (loginsenha)
                            se (loginsenha <> senha[contas]) entao
                               escreva ("Digite sua senha: ")
                               leia (loginsenha)
                            senao
                                 escreval ("Seja bem vindo!", nomecliente[contas])
                                 opcao2 <- 1
                                 ts <- 0
                                 td <- 0
                                 tt <- 0
                                 enquanto (opcao2 <> 0) faca
                                          escreval ("----------")
                                          escreval ("---Menu---")
                                          escreval ("----------")
                                          escreval ("[1] Ver Saldo")
                                          escreval ("[2] Depositar")
                                          escreval ("[3] Sacar")
                                          escreval ("[4] transferir")
                                          escreval ("[5] Extrato")
                                          escreval ("[0] Voltar")
                                          leia (opcao2)
                                          escolha opcao2
                                                  caso 1
                                                       escreval ("Olá ", nomecliente[contas], " seu saldo é: ", saldo[contas])
                                                  caso 2
                                                       escreval ("Digite o valor do deposito: ")
                                                       leia (deposito)
                                                       saldo[contas] <- saldo[contas] + deposito
                                                       escreval ("Deposito Concluido!")
                                                       td <- td + 1
                                                  caso 3
                                                       escreval (saldo[contas])
                                                       escreval ("Digite o valor do saque: ")
                                                       leia (saque)
                                                       se (saque > saldo[contas]) entao
                                                          escreval ("Valor insuficiente! ")
                                                       senao
                                                            escreval ("Saque Concluido!")
                                                            saldo[contas] <- saldo[contas] - saque
                                                            ts <- ts + 1
                                                       fimse
                                                  caso 4
                                                       escreval ("Digite a conta destinario: ")
                                                       leia (contanova)
                                                       se (contanova > totalcontas) ou (contanova < 1) ou (contanova = contas) entao
                                                          escreval ("Essa conta esta Invalida!")
                                                          escreval ("digite a conta destinario: ")
                                                          leia (contanova)
                                                       senao
                                                            escreval ("Qual é o valor da transferencia: R$")
                                                            leia (transferencia)
                                                            se (transferencia > saldo[contas]) entao
                                                               escreval ("Saldo Insuficiente!")
                                                            senao
                                                                 saldo[contas] <- saldo[contas] - transferencia
                                                                 saldo[contanova] <- saldo[contanova] + transferencia
                                                                 escreval ("Transferencia Concluida!")
                                                                 tt <- tt + 1
                                                            fimse
                                                       fimse
                                                       
                                                  caso 5
                                                       escreval ("----------------")
                                                       escreval ("     Extrato    ")
                                                       escreval ("----------------")
                                                       escreval ("Total de Saques: ", ts)
                                                       escreval ("Total de Depositos: ", td)
                                                       escreval ("Total de transferencia: ", tt)
                                                       escreval ("O Saldo Atual: ", saldo[contas])
                                                  caso 0
                                                       escreval ("voltando...")
                                                  outrocaso
                                                           escreval ("Opção Invalida!")
                                          fimescolha
                                 fimenquanto
                            fimse
                       caso 3
                            escreval ("Relatorio da sua conta!")
                            escreval ("-----------------------")
                            soma <- 0
                            maiorsaldo <- 0
                            menorsaldo <- saldo[1]
                            para contador <- 1 ate totalcontas faca
                                 escreval (nomecliente[contador])
                                 escreval (cpf[contador])
                                 escreval (saldo[contador])
                                 soma <- soma + saldo[contador]
                                 se (saldo[contador] > maiorsaldo) entao
                                    maiorsaldo <- saldo[contador]
                                 fimse
                                 se (saldo[contador] < menorsaldo) entao
                                    menorsaldo <- saldo[contador]
                                 fimse
                            fimpara
                            media <- soma / totalcontas
                            escreval ("O maior saldo é: ", maiorsaldo)
                            escreval ("o menor saldo é: ", menorsaldo)
                            escreval ("A Media de saldos é: ", media:5:2)
                            escreval ("Total de contas cadastradas: ", totalcontas)
                       caso 0
                            escreval ("=====================================================")
                            escreval ("     Obrigado por usar o Banco 3M!                   ")
                            escreval ("     Suas transacoes estao seguras conosco.          ")
                            escreval ("     Volte sempre!                                   ")
                            escreval ("=====================================================")
                       outrocaso
                            escreval ("Opção Invalida!")
               fimescolha
      fimenquanto
fimalgoritmo
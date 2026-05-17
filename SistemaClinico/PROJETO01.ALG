algoritmo "Projeto01"
var
   nomepaciente: vetor[1..50] de caractere
   documentopaciente: vetor[1..50] de caractere
   telefonepaciente: vetor[1..50] de caractere
   enderecopaciente: vetor[1..50] de caractere
   totalpaciente: inteiro
   nomemedico: vetor[1..20] de caractere
   crmmedico: vetor[1..20] de caractere
   especialidademedica: vetor[1..20] de caractere
   totalmedico: inteiro
   pacienteconsulta: vetor[1..100] de inteiro
   medicoconsulta: vetor[1..100] de inteiro
   horarioconsulta: vetor[1..100] de caractere
   statusconsultas: vetor[1..100] de inteiro
   totalconsulta: inteiro
   opcao: inteiro
inicio
      opcao <- 1
      totalpaciente <- 0
      enquanto (opcao <> 0 ) faca
               escreval ("------------------------")
               escreval ("     Sistema Clinico    ")
               escreval ("------------------------")
               escreval ("[1] Cadastrar Paciente")
               escreval ("[2] Cadastrar Médico")
               escreval ("[3] Agendar Consulta")
               escreval ("[4] Gerenciar Consultas")
               escreval ("[5] Relatórios")
               escreval ("[0] Sair")
               leia (opcao)
               escolha opcao
                       caso 1
                            totalpaciente <- totalpaciente + 1
                            escreval ("--------------------")
                            escreval ("      Paciente      ")
                            escreval ("--------------------")
                            escreval ("Informe seu Nome: ")
                            leia (nomepaciente[totalpaciente])
                            escreval ("Informe seu Documento: ")
                            leia (documentopaciente[totalpaciente])
                            escreval ("Informe seu Numero de Contato: ")
                            leia (telefonepaciente[totalpaciente])
                            escreval ("Informe seu Endereço: ")
                            leia (enderecopaciente[totalpaciente])
                            escreval ("Seu numero é: ", totalpaciente)
                       caso 2
                            escreval ("--------------------")
                            escreval ("       Médico       ")
                            escreval ("--------------------")
                       caso 3
                            escreval ("-----------------------")
                            escreval ("Agendamento de Consulta")
                            escreval ("-----------------------")
                       caso 4
                            escreval ("     Gerenciador     ")
                       caso 5
                            escreval ("     Relatórios      ")
                       caso 0
                            escreval ("Saindo....")
                       outrocaso
                                escreval ("Opção Invalida!")
               
               fimescolha
      fimenquanto
fimalgoritmo
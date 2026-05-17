algoritmo "Projeto02"
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
   registromedico, registropaciente: inteiro
inicio
      opcao <- 1
      totalpaciente <- 0
      totalmedico <- 0
      totalconsulta <- 0
      totalconsulta <- 0
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
                            escreva ("Informe seu Nome: ")
                            leia (nomepaciente[totalpaciente])
                            escreva ("Informe seu Documento: ")
                            leia (documentopaciente[totalpaciente])
                            escreva ("Informe seu Numero de Contato: ")
                            leia (telefonepaciente[totalpaciente])
                            escreva ("Informe seu Endereço: ")
                            leia (enderecopaciente[totalpaciente])
                            escreval ("Registro: ", totalpaciente)
                       caso 2
                            totalmedico <- totalmedico + 1
                            escreval ("--------------------")
                            escreval ("       Médico       ")
                            escreval ("--------------------")
                            escreva ("Informe seu nome: ")
                            leia (nomemedico[totalmedico])
                            escreva ("Informe seu CRM: ")
                            leia (crmmedico[totalmedico])
                            escreva ("informe sua Especialidade: ")
                            leia (especialidademedica[totalmedico])
                            escreval ("Registro: ", totalmedico)
                       caso 3
                            totalconsulta <- totalconsulta + 1
                            escreval ("-----------------------")
                            escreval ("Agendamento de Consulta")
                            escreval ("-----------------------")
                            escreva ("Informe seu Registro Paciente: ")
                            leia (registropaciente)
                            se (registropaciente > totalpaciente) ou (registropaciente < 1) entao
                               escreval ("Informe seu Registro novamente: ")
                               leia (registropaciente)
                            senao
                                 escreval ("Ola, ", nomepaciente[registropaciente])
                            fimse
                            pacienteconsulta[totalconsulta] <- registropaciente
                            escreval ("Informe o Registro médico: ")
                            leia (registromedico)
                            se (registromedico > totalmedico) ou (registromedico < 1) entao
                               escreval ("Informe seu Registro novamente: ")
                               leia (registromedico)
                            senao
                                 escreval ("Ola, ", nomemedico[registromedico])
                            fimse
                            medicoconsulta[totalconsulta] <- registromedico
                            escreval ("Informe o Horario da Consulta: ")
                            leia (horarioconsulta[totalconsulta])
                            escreval ("Consulta Marcada!")
                            statusconsultas[totalconsulta] <- 1
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
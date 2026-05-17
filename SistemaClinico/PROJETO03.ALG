// =====================================================
// Projeto: Sistema de Clínica Médica
// Autor: Guilherme Costa Ferreira [3M]
// Data: 05.2026
// Descrição: Sistema de gerenciamento de clínica médica
// simulado em Portugol/VisuAlg.
// Permite o cadastro de
// pacientes e médicos, agendamento de consultas com
// vinculação entre registros, gerenciamento de status
// (agendada, realizada ou cancelada) e geração de
// relatórios gerenciais com totais por status.
// =====================================================
algoritmo "Projeto03"
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
   contador: inteiro
   numero, numeroconsulta: inteiro
   realizadas, canceladas, agendadas: inteiro
inicio
      opcao <- 1
      totalpaciente <- 0
      totalmedico <- 0
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
                            para contador <- 1 ate totalconsulta faca
                                 escreval ("Numero da Consulta: ", contador)
                                 escreval ("Nome do Paciente: ",nomepaciente[pacienteconsulta[contador]])
                                 escreval ("Nome do Médico: ", nomemedico[medicoconsulta[contador]])
                                 escreval ("Horario da Consulta: ", horarioconsulta[contador])
                                 escolha statusconsultas[contador]
                                         caso 1
                                              escreval ("Status: Agendada")
                                         caso 2
                                              escreval ("Status: Realizada")
                                         caso 3
                                              escreval ("Status: Cancelada")
                                 fimescolha
                            fimpara
                            escreval ("Informe o numero da consulta que quer Atualizar: ")
                            leia (numero)
                            se (numero > totalconsulta) ou (numero < 1) entao
                               escreval ("Informe o Numero Novamente: ")
                               leia (numero)
                            senao
                                 escreval ("Informe o Numero do Status: ")
                                 leia (numeroconsulta)
                                 statusconsultas[numero] <- numeroconsulta
                            fimse
                       caso 5
                            agendadas <- 0
                            realizadas <- 0
                            canceladas <- 0
                            escreval ("     Relatórios      ")
                            para contador <- 1 ate totalconsulta faca
                                 escolha statusconsultas[contador]
                                         caso 1
                                              agendadas <-agendadas + 1
                                         caso 2
                                              realizadas <- realizadas + 1
                                         caso 3
                                              canceladas <- canceladas + 1
                                 fimescolha
                            fimpara
                            escreval ("Tem ", agendadas, " consultas agendadas!")
                            escreval ("Tem ", realizadas, " consultas realizadas!")
                            escreval ("Tem ", canceladas, " consultas canceladas!")
                       caso 0
                            escreval ("Saindo....")
                       outrocaso
                                escreval ("Opção Invalida!")
               
               fimescolha
      fimenquanto
fimalgoritmo
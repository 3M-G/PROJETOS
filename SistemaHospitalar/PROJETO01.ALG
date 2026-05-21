algoritmo "Projeto01"
var
   codigopaciente: vetor[1..100] de inteiro
   nomepaciente: vetor[1..100] de caractere
   documentopaciente: vetor[1..100] de caractere
   telefonepaciente: vetor[1..100] de caractere
   idadepaciente: vetor[1..100] de inteiro
   sintomaspaciente: vetor[1..100] de caractere
   prioridade: vetor[1..100] de caractere
   situacao: vetor[1..100] de logico
   codigomedico: vetor[1..20] de inteiro
   nomemedico: vetor[1..20] de caractere
   especialidade: vetor[1..20] de caractere
   crm: vetor[1..20] de caractere
   qtdatendimentos: vetor[1..20] de inteiro
   codigomedicamentos: vetor[1..50] de inteiro
   remedio: vetor[1..50] de caractere
   qtdatual: vetor[1..50] de inteiro
   qtdminima: vetor[1..50] de inteiro
   validade: vetor[1..50] de caractere
   codigoatendimento: vetor[1..200] de inteiro
   codpaciente: vetor[1..200] de inteiro
   codmedico: vetor[1..200] de inteiro
   diagnostico: vetor[1..200] de caractere
   receita: vetor[1..200] de caractere
   observacao: vetor[1..200] de caractere
   status: vetor[1..200] de caractere
   totalmedicos: inteiro
   totalpaciente: inteiro
   totalatendimentos: inteiro
   totalmedicamentos: inteiro
   decisao: inteiro
   paciente: inteiro
inicio
      decisao <- 1
      enquanto (decisao <> 0) faca
               escreval ("--------------------------")
               escreval ("       Hospital 3M        ")
               escreval ("--------------------------")
               escreval ("----")
               escreval ("Menu")
               escreval ("----")
               escreval ("[1] Paciente")
               escreval ("[2] Médicos")
               escreval ("[3] Atendimentos")
               escreval ("[4] Medicamentos")
               escreval ("[5] Relatórios")
               escreval ("[0] Sair")
               leia (decisao)
               escolha decisao
                       caso 1
                            paciente <- 1
                            enquanto (paciente <> 0) faca
                                     escreval ("----------")
                                     escreval (" Paciente ")
                                     escreval ("----------")
                                     escreval ("[1] Cadastro")
                                     escreval ("[2] Lista Pacientes")
                                     escreval ("[3] Buscar Paciente")
                                     escreval ("[4] Alterar Dados")
                                     escreval ("[5] Inativar Paciente")
                                     escreval ("[0] Voltar Menu Principal")
                                     leia (paciente)
                                     escolha paciente
                                             caso 1
                                                  escreval ("Construindo")
                                             caso 2
                                                  escreval ("Construindo")
                                             caso 3
                                                  escreval ("Construindo")
                                             caso 4
                                                  escreval ("Construindo")
                                             caso 5
                                                  escreval ("Construindo")
                                             caso 0
                                                  escreval ("Voltando...")
                                             outrocaso
                                                      escreval ("Opção Inavalida!")
                                     fimescolha
                            fimenquanto
                       caso 2
                            enquanto (medico <> 0) faca
                            escreval ("----------")
                            escreval ("  Médicos ")
                            escreval ("----------")
                            escreval ("[1]")
                            fimenquanto
                       caso 3
                            escreval ("-----------")
                            escreval ("Atendimento")
                            escreval ("-----------")
                       caso 4
                            escreval ("------------")
                            escreval ("Medicamentos")
                            escreval ("------------")
                       caso 5
                            escreval ("------------")
                            escreval (" Relatórios ")
                            escreval ("------------")
                       caso 0
                            escreval ("Saindo...")
                       outrocaso
                                escreval ("Opção Invalida!")
               fimescolha
               
      fimenquanto
fimalgoritmo
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
   paciente: inteiro
   medico: inteiro
   atendimento: inteiro
   medicamento: inteiro
   i: inteiro
   nomebuscado1: caractere
   achou: logico
   codigo1, codigo2: inteiro
   sugestao1, sugestao2, sugestao3: inteiro
inicio
      sujestao1 <- 1
      enquanto (sujestao1 <> 0) faca
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
               leia (sugestao1)
               escolha sugestao1
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
                                     escreval ("[0] Voltar")
                                     leia (paciente)
                                     escolha paciente
                                             caso 1
                                                  escreval ("--------")
                                                  escreval ("Cadastro")
                                                  escreval ("--------")
                                                  se (totalpaciente < 100) entao
                                                     totalpaciente <- totalpaciente + 1
                                                     escreval ("Informe o Nome do Paciente: ")
                                                     leia (nomepaciente[totalpaciente])
                                                     escreval ("Informe o Documento Do Paciente: ")
                                                     leia (documentopaciente[totalpaciente])
                                                     escreval ("Informe o Telefone do Paciente: ")
                                                     leia (telefonepaciente[totalpaciente])
                                                     escreval ("Informe a Idade do paciente: ")
                                                     leia (idadepaciente[totalpaciente])
                                                     escreval ("Informe o Sintomas: ")
                                                     leia (sintomaspaciente[totalpaciente])
                                                     escreval ("Informe a Prioridade: ")
                                                     leia (prioridade[totalpaciente])
                                                     codigopaciente[totalpaciente] <- totalpaciente
                                                     escreval ("Registro: ", codigopaciente[totalpaciente])
                                                     situacao[totalpaciente] <- verdadeiro
                                                  fimse
                                             caso 2
                                                  se (totalpaciente = 0) entao
                                                     escreval ("Não a nenhum paciente cadastrado ainda!")
                                                  senao
                                                       para i <- 1 ate totalpaciente faca
                                                            se (situacao[i]) entao
                                                               escreval ("Codigo: ", codigopaciente[i])
                                                               escreval ("Nome: ",nomepaciente[i])
                                                               escreval ("Documento:", documentopaciente[i])
                                                               escreval ("Idade: ", idadepaciente[i])
                                                               escreval ("Telefone: ", telefonepaciente[i])
                                                               se (situacao[i] ) entao
                                                                  escreval ("Situação: Ativa")
                                                               fimse
                                                            fimse
                                                       fimpara
                                                  fimse
                                             caso 3
                                                  escreval ("--------")
                                                  escreval ("Buscador")
                                                  escreval ("--------")
                                                  se (totalpaciente = 0) entao
                                                     escreval ("Não a nenhum paciente cadastrado!")
                                                  senao
                                                        escreval ("Informe O nome do Paciente: ")
                                                        leia (nomebuscado1)
                                                        achou <- falso
                                                        para i <- 1 ate totalpaciente faca
                                                             se (nomepaciente[i] = nomebuscado1) entao
                                                                se (situacao[i]) entao
                                                                      escreval ("Nome: ", nomepaciente[i])
                                                                      escreval ("Documento: ", documentopaciente[i])
                                                                      escreval ("Telefone: ", telefonepaciente[i])
                                                                      escreval ("Idade: ", idadepaciente[i])
                                                                      se (situacao[i]) entao
                                                                         escreval ("Situação: ativa")
                                                                      fimse
                                                                senao
                                                                     escreval ("Situação: Inativo!")
                                                                fimse
                                                                achou <- verdadeiro
                                                             fimse
                                                        fimpara
                                                        se (achou = falso) entao
                                                           escreval ("Paciente não Encontrado!")
                                                        fimse
                                                  fimse
                                             caso 4
                                                  escreval ("---------")
                                                  escreval ("Alterador")
                                                  escreval ("---------")
                                                  se (totalpaciente = 0) entao
                                                     escreval ("Nenhum paciente cadastrado!")
                                                  senao
                                                       escreval ("Informe o Codigo do paciente: ")
                                                       leia (codigo1)
                                                       achou <- falso
                                                       para i <- 1 ate totalpaciente faca
                                                            se (codigopaciente[i] = codigo1) entao
                                                               se (situacao[i]) entao
                                                                  escreval ("[1] Alterar Nome")
                                                                  escreval ("[2] Alterar Documento")
                                                                  escreval ("[3] Alterar Telefone")
                                                                  escreval ("[4] Alterar Idade")
                                                                  escreval ("[0] Voltar")
                                                                  leia (sugestao2)
                                                                  escolha sugestao2
                                                                          caso 1
                                                                               escreval ("Informe a alteração: ")
                                                                               leia (nomepaciente[i])
                                                                          caso 2
                                                                               escreval ("Informe a alteração: ")
                                                                               leia (documentopaciente[i])
                                                                          caso 3
                                                                               escreval ("Informe a alteração: ")
                                                                               leia (telefonepaciente[i])
                                                                          caso 4
                                                                               escreval ("Informe a alteração: ")
                                                                               leia (idadepaciente[i])
                                                                          caso 0
                                                                               escreval ("Voltando...")
                                                                          outrocaso
                                                                                   escreval ("Opção Invalida!")
                                                                  fimescolha
                                                               senao
                                                                    escreval ("Situação: Inativo!")
                                                               fimse
                                                               achou <- verdadeiro
                                                            fimse
                                                       fimpara
                                                       se (achou = falso) entao
                                                          escreval ("Paciente não Encontrado!")
                                                       fimse
                                                  fimse
                                             caso 5
                                                  escreval ("-----------------")
                                                  escreval ("Inativar Paciente")
                                                  escreval ("-----------------")
                                                  se (totalpaciente = 0) entao
                                                     escreval ("Nenhum paciente Cadastrado!")
                                                  senao
                                                       escreval ("Informe o codigo do Paciente: ")
                                                       leia (codigo2)
                                                       achou <- falso
                                                       para i <- 1 ate totalpaciente faca
                                                            se (codigopaciente[i] = codigo2) entao
                                                               se (situacao[i]) entao
                                                                  escreval ("Codigo: ", codigopaciente[i])
                                                                  escreval ("Nome: ",nomepaciente[i])
                                                                  escreval ("Documento:", documentopaciente[i])
                                                                  escreval ("Idade: ", idadepaciente[i])
                                                                  escreval ("Telefone: ", telefonepaciente[i])
                                                                  escreval ("Confirmar inativação? (1=Sim / 2=Não)")
                                                                  leia (sugestao3)
                                                                  se (sugestao3 = 1) entao
                                                                     escreval ("Paciente Inativado!")
                                                                     situacao[i] <- falso
                                                                  senao
                                                                       escreval ("Operação Cancelada!")
                                                                  fimse
                                                               senao
                                                                    escreval ("Situação: Inativa!")
                                                               fimse
                                                               achou <- verdadeiro
                                                            fimse
                                                       fimpara
                                                       se (achou = falso) entao
                                                          escreval ("Paciente não encontrado!")
                                                       fimse
                                                  fimse
                                             caso 0
                                                  escreval ("Voltando...")
                                             outrocaso
                                                      escreval ("Opção Inavalida!")
                                     fimescolha
                            fimenquanto
                       caso 2
                            medico <- 1
                            enquanto (medico <> 0) faca
                               escreval ("----------")
                               escreval ("  Médicos ")
                               escreval ("----------")
                               escreval ("[1] Cadastro")
                               escreval ("[2] Lista Médicos")
                               escreval ("[3] Buscar Especialidade")
                               escreval ("[4] Alterar Dados")
                               escreval ("[0] Voltar")
                               leia (medico)
                               escolha medico
                                       caso 1
                                            escreval ("Construindo")
                                         caso 2
                                              escreval ("Construindo")
                                         caso 3
                                              escreval ("Construindo")
                                         caso 4
                                              escreval ("Construindo")
                                         caso 0
                                              escreval ("Voltando")
                                         outrocaso
                                                  escreval ("Opção Invalida!")
                               fimescolha
                            fimenquanto
                       caso 3
                            atendimento <- 1
                            enquanto (atendimento <> 0) faca
                               escreval ("-----------")
                               escreval ("Atendimento")
                               escreval ("-----------")
                               escreval ("[1] Registrar Atendimento")
                               escreval ("[2] Listar Atendimentos")
                               escreval ("[3] Buscar Atendimento")
                               escreval ("[0] Voltar")
                               leia (atendimento)
                               escolha atendimento
                                       caso 1
                                            escreval ("Construindo")
                                       caso 2
                                            escreval ("Construindo")
                                       caso 3
                                            escreval ("Construindo")
                                       caso 0
                                            escreval ("Voltando...")
                                       outrocaso
                                                escreval ("Opção Invalida!")
                               fimescolha
                            fimenquanto
                            
                       caso 4
                            medicamento <- 1
                            enquanto (medicamento <> 0) faca
                               escreval ("------------")
                               escreval ("Medicamentos")
                               escreval ("------------")
                               escreval ("[1] Cadastrar Medicamento")
                               escreval ("[2] Listar medicamentos")
                               escreval ("[3] Dar baixa no Estoque")
                               escreval ("[4] Alerta de Estoque Baixo")
                               escreval ("[0] Voltar")
                               leia (medicamento)
                               escolha medicamento
                                       caso 1
                                            escreval ("Construindo")
                                       caso 2
                                            escreval ("Construindo")
                                       caso 3
                                            escreval ("Construindo")
                                       caso 4
                                            escreval ("Construindo")
                                       caso 0
                                            escreval ("Voltando...")
                                       outrocaso
                                                escreval ("Opção Invalida!")
                               fimescolha
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
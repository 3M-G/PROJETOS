# 🏥 Sistema de Clínica Médica — Portugol/VisuAlg

> Projeto desenvolvido em Portugol/VisuAlg como projeto de portfólio após a conclusão do curso de Algoritmos do Canal Curso em Vídeo.

![Status](https://img.shields.io/badge/Status-Concluído-green)
![Linguagem](https://img.shields.io/badge/Linguagem-Portugol%20%2F%20VisuAlg-blue)
![Tipo](https://img.shields.io/badge/Tipo-Sistema%20de%20Gerenciamento-orange)

---

## 🩺 Sobre o Projeto

Sistema de gerenciamento de clínica médica desenvolvido em console com Portugol/VisuAlg. Permite o cadastro de pacientes e médicos, agendamento e gerenciamento de consultas e geração de relatórios gerenciais. O projeto aplica conceitos de vetores paralelos, estruturas de repetição e decisão.

---

## ⚙️ Funcionalidades

### 👤 Cadastro de Pacientes
- Registro de nome, documento, telefone e endereço
- Geração automática de número de registro

### 👨‍⚕️ Cadastro de Médicos
- Registro de nome, CRM e especialidade
- Geração automática de número de registro

### 📅 Agendamento de Consultas
- Vinculação de paciente e médico pelo número de registro
- Validação de registros existentes
- Registro de horário da consulta
- Status inicial como **Agendada**

### 🗂️ Gerenciamento de Consultas
- Listagem completa de todas as consultas
- Exibição de nome do paciente, médico, horário e status
- Atualização de status para:
  - `1` — Agendada
  - `2` — Realizada
  - `3` — Cancelada

### 📊 Relatórios
- Total de consultas agendadas
- Total de consultas realizadas
- Total de consultas canceladas

---

## 🗂️ Estrutura de Dados

O sistema utiliza **vetores paralelos** onde cada índice representa um registro:

### Pacientes
| Vetor | Tipo | Descrição |
|---|---|---|
| `nomepaciente[50]` | Caractere | Nome do paciente |
| `documentopaciente[50]` | Caractere | Documento do paciente |
| `telefonepaciente[50]` | Caractere | Telefone de contato |
| `enderecopaciente[50]` | Caractere | Endereço do paciente |

### Médicos
| Vetor | Tipo | Descrição |
|---|---|---|
| `nomemedico[20]` | Caractere | Nome do médico |
| `crmmedico[20]` | Caractere | CRM do médico |
| `especialidademedica[20]` | Caractere | Especialidade médica |

### Consultas
| Vetor | Tipo | Descrição |
|---|---|---|
| `pacienteconsulta[100]` | Inteiro | Índice do paciente |
| `medicoconsulta[100]` | Inteiro | Índice do médico |
| `horarioconsulta[100]` | Caractere | Horário da consulta |
| `statusconsultas[100]` | Inteiro | Status da consulta |

---

## 🧠 Conceitos Aplicados

- **Vetores paralelos** — relacionar dados de pacientes, médicos e consultas
- **Estruturas de repetição** — `enquanto` e `para` para menus e listagens
- **Estruturas de decisão** — `se/senao` e `escolha/caso` para validações e status
- **Contadores** — controle de registros e totalizadores de relatório
- **Vínculo entre vetores** — usar índice de um vetor para acessar outro

---

## 🖥️ Como Rodar no VisuAlg

1. Baixe e instale o **VisuAlg** — [visualg3.com.br](http://visualg3.com.br/)
2. Faça o download do arquivo `Projeto02.alg` deste repositório
3. Abra o VisuAlg
4. Clique em **Arquivo → Abrir** e selecione o arquivo
5. Pressione **F9** para executar

---

## 📌 Como Usar

1. Cadastre pelo menos um **paciente** (opção 1)
2. Cadastre pelo menos um **médico** (opção 2)
3. Agende uma **consulta** informando os registros (opção 3)
4. Gerencie e atualize o status das consultas (opção 4)
5. Visualize o relatório gerencial (opção 5)

---

## 👨‍💻 Autor

**Guilherme Costa Ferreira — 3M**  
Projeto desenvolvido em maio de 2026  
Baseado no curso de Algoritmos do [Curso em Vídeo](https://www.cursoemvideo.com/curso/curso-de-algoritmo/)

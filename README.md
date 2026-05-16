# 🏦 Sistema Bancário — Portugol/VisuAlg

> Projeto desenvolvido em Portugol/VisuAlg como projeto de portfólio após a conclusão do curso de Algoritmos do Canal Curso em Vídeo.

---

## 📋 Descrição

Sistema bancário simulado em console, desenvolvido inteiramente em lógica de programação com Portugol/VisuAlg. O projeto aplica conceitos fundamentais como vetores paralelos, estruturas de repetição, estruturas de decisão e organização modular de código.

---

## ✅ Funcionalidades

### Menu Principal
- **Criar Conta** — cadastro de novos clientes com nome, CPF e senha
- **Acessar Conta** — login com número da conta e senha
- **Relatório Geral** — painel administrativo com dados de todos os clientes
- **Sair** — encerra o sistema com mensagem de despedida

### Menu da Conta (área logada)
- **Ver Saldo** — exibe o saldo atual da conta
- **Depositar** — adiciona valor ao saldo da conta
- **Sacar** — retira valor do saldo com validação de saldo suficiente
- **Transferir** — transfere valor entre contas com validações completas
- **Extrato** — exibe total de saques, depósitos e transferências realizados na sessão

### Relatório Geral
- Lista nome, CPF e saldo de todos os clientes
- Exibe o maior saldo entre todas as contas
- Exibe o menor saldo entre todas as contas
- Calcula e exibe a média de saldo de todos os clientes
- Exibe o total de contas cadastradas

---

## 🛡️ Validações Implementadas

- Conta inexistente no login
- Senha incorreta no login
- Saldo insuficiente no saque
- Saldo insuficiente na transferência
- Conta destino inexistente na transferência
- Transferência para a própria conta bloqueada
- Opção inválida nos menus

---

## 🗂️ Estrutura de Dados

O sistema utiliza **vetores paralelos** onde cada índice representa um cliente:

| Vetor | Tipo | Descrição |
|---|---|---|
| `nomecliente[50]` | Caractere | Nome do cliente |
| `cpf[50]` | Caractere | CPF do cliente |
| `senha[50]` | Inteiro | Senha da conta |
| `saldo[50]` | Real | Saldo atual |
| `contaativa[50]` | Lógico | Status da conta |

---

## 🖥️ Como Rodar no VisuAlg

1. Baixe e instale o **VisuAlg** — [visualg.software.inf.br](http://visualg3.com.br/)
2. Faça o download do arquivo `Projeto03.alg` deste repositório
3. Abra o VisuAlg
4. Clique em **Arquivo → Abrir** e selecione o arquivo `Projeto03.alg`
5. Clique em **Executar → Executar** ou pressione **F9**
6. Interaja com o sistema pelo console

---

## 📚 Conceitos Aplicados

- Vetores paralelos
- Estruturas de repetição (`enquanto`, `para`)
- Estruturas de decisão (`se/senao`, `escolha/caso`)
- Variáveis de controle e contadores
- Lógica de busca em vetores
- Organização e documentação de código

---

## 👨‍💻 Autor

**Guilherme Costa Ferreira — 3M**  
Projeto desenvolvido em maio de 2026  
Baseado no curso de Algoritmos do [Curso em Vídeo](https://www.cursoemvideo.com/curso/curso-de-algoritmo/)

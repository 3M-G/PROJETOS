# 🏥 Hospital 3M — Sistema de Gestão Hospitalar

Um sistema completo de gestão hospitalar desenvolvido em **VisuAlg 3.0**, implementando funcionalidades reais de cadastro, busca e gerenciamento de pacientes, médicos, medicamentos e atendimentos.

---

## 📋 Sumário

- [Visão Geral](#visão-geral)
- [Funcionalidades](#funcionalidades)
- [Requisitos](#requisitos)
- [Como Usar](#como-usar)
- [Estrutura de Dados](#estrutura-de-dados)
- [Módulos](#módulos)
- [Conceitos Implementados](#conceitos-implementados)
- [Autor](#autor)

---

## 🎯 Visão Geral

O **Hospital 3M** é um sistema de gestão hospitalar que permite:

- ✅ Cadastrar e gerenciar pacientes
- ✅ Administrar médicos e suas especialidades
- ✅ Controlar estoque de medicamentos
- ✅ Registrar atendimentos e diagnósticos
- ✅ Gerar relatórios com estatísticas do hospital

**Total de Funcionalidades:** 17 casos de uso completos  
**Linhas de Código:** ~1000+  
**Complexidade:** Intermediária/Avançada

---

## 📚 Funcionalidades

### 1. 👥 Módulo Pacientes (5 funcionalidades)

| Função | Descrição |
|--------|-----------|
| **Cadastro** | Adiciona novo paciente com documentação completa |
| **Listagem** | Exibe todos os pacientes ativos |
| **Busca** | Busca paciente por nome (busca linear) |
| **Alteração** | Modifica dados do paciente (nome, documento, telefone, idade) |
| **Inativação** | Inativa paciente com confirmação de segurança |

**Limites:** Máximo 100 pacientes

---

### 2. 👨‍⚕️ Módulo Médicos (4 funcionalidades)

| Função | Descrição |
|--------|-----------|
| **Cadastro** | Adiciona médico com CRM e especialidade |
| **Listagem** | Exibe todos os médicos e seu número de atendimentos |
| **Busca por Especialidade** | Busca todos os médicos de uma especialidade |
| **Alteração** | Modifica nome, CRM ou especialidade |

**Limites:** Máximo 20 médicos  
**Especialidades Disponíveis:** Clínico Geral, Pediatria, Cardiologia, Ortopedia, Neurologia

---

### 3. 💊 Módulo Medicamentos (4 funcionalidades)

| Função | Descrição |
|--------|-----------|
| **Cadastro** | Cadastra medicamento com quantidade e validade |
| **Listagem** | Exibe todos os medicamentos em estoque |
| **Dar Baixa** | Reduz quantidade quando medicamento é dispensado |
| **Alerta de Estoque Baixo** | Lista medicamentos com estoque abaixo do mínimo |

**Limites:** Máximo 50 medicamentos

---

### 4. 📋 Módulo Atendimentos (3 funcionalidades)

| Função | Descrição |
|--------|-----------|
| **Registrar** | Cria atendimento ligando paciente + médico + diagnóstico |
| **Listar** | Exibe todos os atendimentos realizados |
| **Buscar** | Busca atendimento por código |

**Limites:** Máximo 200 atendimentos  
**Nota:** Incrementa automaticamente o contador de atendimentos do médico

---

### 5. 📊 Módulo Relatórios (1 funcionalidade)

Gera relatório com 6 estatísticas do hospital:

1. Total de pacientes ativos
2. Medicamentos com estoque baixo
3. Médico que mais atendeu (nome e quantidade)
4. Total de médicos cadastrados
5. Total de medicamentos em estoque
6. Total de atendimentos realizados

---

## 🔧 Requisitos

### Sistema
- **Windows** (XP+), **Linux** ou **macOS**
- **VisuAlg 3.0** instalado

### Para instalar VisuAlg
1. Acesse: http://www.apoioinformatica.com.br/produtos/visualg/
2. Baixe a versão para seu SO
3. Instale seguindo as instruções

---

## 🚀 Como Usar

### Passo 1: Abrir o Programa
1. Abra o **VisuAlg 3.0**
2. Vá em `Arquivo > Abrir`
3. Selecione o arquivo `Projeto01.alg` (ou o nome do seu arquivo)

### Passo 2: Executar
1. Pressione **F9** ou clique em `Executar > Executar`
2. O menu principal do hospital aparecerá

### Passo 3: Navegar
```
Menu Principal
├── [1] Paciente
│   ├── [1] Cadastro
│   ├── [2] Lista Pacientes
│   ├── [3] Buscar Paciente
│   ├── [4] Alterar Dados
│   ├── [5] Inativar Paciente
│   └── [0] Voltar
├── [2] Médicos
│   ├── [1] Cadastro
│   ├── [2] Lista Médicos
│   ├── [3] Buscar Especialidade
│   ├── [4] Alterar Dados
│   └── [0] Voltar
├── [3] Atendimentos
│   ├── [1] Registrar Atendimento
│   ├── [2] Listar Atendimentos
│   ├── [3] Buscar Atendimento
│   └── [0] Voltar
├── [4] Medicamentos
│   ├── [1] Cadastrar Medicamento
│   ├── [2] Listar medicamentos
│   ├── [3] Dar baixa no Estoque
│   ├── [4] Alerta de Estoque Baixo
│   └── [0] Voltar
├── [5] Relatórios
│   └── (Exibe 6 estatísticas)
└── [0] Sair
```

---

## 📦 Estrutura de Dados

### Vetores Paralelos para Pacientes (até 100)
```
codigopaciente[1..100]      → Código único (gerado automaticamente)
nomepaciente[1..100]        → Nome completo
documentopaciente[1..100]   → CPF ou documento
telefonepaciente[1..100]    → Telefone de contato
idadepaciente[1..100]       → Idade em anos
sintomaspaciente[1..100]    → Sintomas iniciais
prioridade[1..100]          → Nível de prioridade (1-4)
situacao[1..100]            → Ativo (verdadeiro) ou Inativo (falso)
```

### Vetores para Médicos (até 20)
```
codigomedico[1..20]         → Código único (gerado automaticamente)
nomemedico[1..20]           → Nome completo
especialidade[1..20]        → Especialidade médica
crm[1..20]                  → Número do CRM
qtdatendimentos[1..20]      → Quantidade de atendimentos realizados
```

### Vetores para Medicamentos (até 50)
```
codigomedicamentos[1..50]   → Código único (gerado automaticamente)
remedio[1..50]              → Nome do medicamento
qtdatual[1..50]             → Quantidade atual em estoque
qtdminima[1..50]            → Quantidade mínima (alerta)
validade[1..50]             → Data de validade
```

### Vetores para Atendimentos (até 200)
```
codigoatendimento[1..200]   → Código único (gerado automaticamente)
codpaciente[1..200]         → Código do paciente atendido
codmedico[1..200]           → Código do médico responsável
diagnostico[1..200]         → Diagnóstico
receita[1..200]             → Medicamentos prescritos
observacao[1..200]          → Observações adicionais
status[1..200]              → Status do atendimento
```

---

## 🏗️ Módulos

### Pacientes
**Tipo:** Cadastro com exclusão lógica  
**Validações:**
- Limite de 100 pacientes
- Pacientes inativos não podem ser alterados
- Apenas pacientes ativos aparecem nas listagens (exceto ao inativar)

**Algoritmos Usados:**
- Busca linear por nome
- Exclusão lógica (não apaga, só marca como inativo)

---

### Médicos
**Tipo:** Cadastro sem inativação  
**Validações:**
- Limite de 20 médicos
- Contador de atendimentos incrementa automaticamente
- Incrementa quando um atendimento é registrado com esse médico

**Algoritmos Usados:**
- Busca linear por código
- Busca linear múltipla por especialidade (retorna todos os matches)

---

### Medicamentos
**Tipo:** Controle de estoque  
**Validações:**
- Limite de 50 medicamentos
- Quantidade atual começa com valor recebido (não pode ser 0)
- Alerta quando quantidade < quantidade mínima

**Algoritmos Usados:**
- Busca linear por código
- Contagem com condição (medicamentos com estoque baixo)

---

### Atendimentos
**Tipo:** Relacionamento entre 3 entidades  
**Validações:**
- Limite de 200 atendimentos
- Paciente DEVE estar ativo
- Médico DEVE estar cadastrado
- Incrementa qtdatendimentos do médico automaticamente
- Incrementa totalatendimentos automaticamente

**Algoritmos Usados:**
- Busca linear dupla (paciente + médico)
- Validação de estado (paciente ativo)
- Incremento de contador relacional

---

### Relatórios
**Tipo:** Síntese de dados  
**Estatísticas:**
- Contagem simples (pacientes ativos, medicamentos, médicos)
- Contagem com condição (estoque baixo)
- Busca de máximo com guarda de nome

**Algoritmos Usados:**
- Contagem com laço `para`
- Busca de máximo valor

---

## 💡 Conceitos Implementados

### Estruturas de Dados
✅ **Vetores paralelos** — 8 estruturas de dados sincronizadas pela posição  
✅ **Variáveis de controle** — contadores e flags  
✅ **Tipos de dados corretos** — inteiro, caractere, lógico

### Algoritmos
✅ **Busca Linear** — em 3 variações (por nome, código, especialidade)  
✅ **Contagem** — total simples e com condição  
✅ **Busca de Máximo** — identificando maior valor com nome  
✅ **Validação de estado** — verificação lógica

### Estruturas de Controle
✅ **Enquanto** — menus que repetem até `0`  
✅ **Para** — percurso de vetores  
✅ **Se/Senão** — decisões aninhadas  
✅ **Escolha/Caso** — seleção de opções

### Boas Práticas
✅ **Menus aninhados** — cada módulo tem seu próprio menu  
✅ **Validação de limites** — verifica espaço antes de adicionar  
✅ **Exclusão lógica** — não apaga dados, marca como inativo  
✅ **Confirmações de risco** — pede confirmação antes de inativar  
✅ **Mensagens de feedback** — avisa quando não encontra dados  
✅ **Organização modular** — cada funcionalidade separada

---

## 📈 Estatísticas do Projeto

| Métrica | Valor |
|---------|-------|
| **Funcionalidades Completas** | 17 |
| **Vetores Paralelos** | 8 |
| **Linhas de Código** | 1000+ |
| **Menus/Submenus** | 5 principais + 5 sub |
| **Tipos de Busca** | 3 (nome, código, especialidade) |
| **Tipos de Validação** | 5+ |
| **Máximo de Registros** | 370 (100+20+50+200) |

---

## 🎓 O que você aprendeu

Desenvolvendo este projeto, você praticou:

1. **Estruturas de Dados:** Vetores paralelos, sincronização
2. **Algoritmos Clássicos:** Busca linear, contagem, máximo
3. **Controle de Fluxo:** Menus aninhados, validações
4. **Boas Práticas:** Modularização, feedback ao usuário, exclusão lógica
5. **Lógica de Negócio:** Relacionamento entre entidades, contadores
6. **Raciocínio Lógico:** Análise de problema, decomposição

---

## 📝 Exemplos de Uso

### Exemplo 1: Cadastrar um Paciente
```
Menu Principal → [1] Paciente → [1] Cadastro

Sistema pede:
  - Nome: João Silva
  - Documento: 123.456.789-00
  - Telefone: (11) 98765-4321
  - Idade: 45
  - Sintomas: Dor de cabeça
  - Prioridade: 2

Resultado: "Registro: 1" (código gerado automaticamente)
```

### Exemplo 2: Registrar um Atendimento
```
Menu Principal → [3] Atendimentos → [1] Registrar

Sistema pede:
  - Código do Paciente: 1 (valida se existe e está ativo)
  - Código do Médico: 1 (valida se existe)
  - Diagnóstico: Enxaqueca
  - Receita: Paracetamol 500mg
  - Observação: Beber bastante água

Resultado: 
  - Atendimento criado (código: 1)
  - Contador do médico incrementa para 1
```

### Exemplo 3: Ver Relatórios
```
Menu Principal → [5] Relatórios

Resultado:
  - Total de Pacientes Ativos: 5
  - Medicamentos com Estoque Baixo: 2
  - Médico que Mais Atendeu: João Silva (3 atendimentos)
  - Total de Médicos Cadastrados: 3
  - Total de Medicamentos: 10
  - Total de Atendimentos Realizados: 8
```

---

## ⚠️ Limitações

- **Dados não persistem:** Ao fechar o programa, todos os dados são perdidos (não há salvamento em arquivo)
- **Interface de texto:** Não há interface gráfica
- **Máximo de registros:** Limitados pelos tamanhos dos vetores
- **Sem validação de CPF/CRM:** Aceita qualquer valor

### Possíveis Melhorias
- Implementar salvamento em arquivo (leitura/escrita)
- Adicionar validação de CPF e CRM
- Criar interface gráfica
- Implementar ordenação de relatórios
- Adicionar busca avançada com filtros múltiplos

---

## 👤 Autor

**Desenvolvido como projeto educacional de algoritmos e estruturas de dados em VisuAlg.**

Conceitos principais: Vetores, Busca Linear, Menus Aninhados, Validações e Boas Práticas de Programação.

---

## 📞 Suporte

Se encontrar erros ou tiver dúvidas:

1. Verifique se o VisuAlg 3.0 está instalado corretamente
2. Confirme que o arquivo está em formato `.alg`
3. Revise as validações de entrada (códigos devem ser números)

---

## 📄 Licença

Projeto educacional. Sinta-se livre para usar, modificar e compartilhar para fins de aprendizado.

---

**Última atualização:** Maio de 2026  
**Versão:** 1.0 Final

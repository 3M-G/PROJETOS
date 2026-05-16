# 🚢 Batalha Naval — Portugol/VisuAlg

> Projeto desenvolvido em Portugol/VisuAlg como projeto de portfólio após a conclusão do curso de Algoritmos do Canal Curso em Vídeo.

![Status](https://img.shields.io/badge/Status-Concluído-green)
![Linguagem](https://img.shields.io/badge/Linguagem-Portugol%20%2F%20VisuAlg-blue)
![Tipo](https://img.shields.io/badge/Tipo-Jogo-purple)

---

## 🎮 Sobre o Projeto

Jogo de Batalha Naval completo desenvolvido em console com Portugol/VisuAlg. O jogador enfrenta o computador em uma batalha para destruir todos os navios inimigos antes que os seus sejam destruídos. O projeto aplica conceitos de matrizes, aleatoriedade e estruturas de repetição.

---

## ⚙️ Como Funciona

### Fase 1 — Posicionamento
- O jogador posiciona **10 navios** no seu tabuleiro informando linha e coluna
- O computador posiciona **10 navios** automaticamente em posições aleatórias

### Fase 2 — Batalha
- O jogador ataca informando uma linha e coluna no tabuleiro do computador
- O computador ataca automaticamente o tabuleiro do jogador com posições aleatórias
- Cada turno exibe se o ataque acertou ou errou

### Fase 3 — Vitória
- O jogo termina quando alguém destruir todos os **10 navios** do adversário
- O sistema anuncia o vencedor ao final

---

## 🗺️ Legenda do Tabuleiro

| Valor | Significado |
|---|---|
| `0` | Água — posição vazia |
| `1` | Navio posicionado |

---

## 🧠 Conceitos Aplicados

- **Matrizes** — tabuleiros representados como `vetor[1..10, 1..10]`
- **Aleatoriedade** — função `randi()` para posicionamento e ataques do computador
- **Estruturas de repetição** — `para` e `enquanto` para controle do jogo
- **Estruturas de decisão** — `se/senao` para verificar acertos e derrotas
- **Contadores** — controle de navios destruídos de cada lado

---

## 🖥️ Como Rodar no VisuAlg

1. Baixe e instale o **VisuAlg** — [visualg3.com.br](http://visualg3.com.br/)
2. Faça o download do arquivo `projeto02.alg` deste repositório
3. Abra o VisuAlg
4. Clique em **Arquivo → Abrir** e selecione o arquivo
5. Pressione **F9** para executar
6. Posicione seus 10 navios e boa sorte! ⚓

---

## 🏆 Estratégia

- Distribua seus navios pelo tabuleiro para dificultar o ataque do computador
- Tente cobrir diferentes regiões do tabuleiro ao atacar
- Lembre-se que o computador ataca de forma aleatória — a sorte também conta!

---

## 👨‍💻 Autor

**Guilherme Costa Ferreira — 3M**  
Projeto desenvolvido em maio de 2026  
Baseado no curso de Algoritmos do [Curso em Vídeo](https://www.cursoemvideo.com/curso/curso-de-algoritmo/)

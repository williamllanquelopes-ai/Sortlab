# SortLab — Analisador de Algoritmos

Aplicação desktop em Java 8 e Swing, sem bibliotecas externas. Implementa Bubble Sort, Selection Sort, Insertion Sort, Merge Sort e Quick Sort manualmente. Os benchmarks trabalham sobre cópias separadas do conjunto original, usam `System.nanoTime()` apenas na chamada do algoritmo e verificam o resultado.

## Requisito

Instale um **JDK** (Java 8 ou superior). O ambiente em que este projeto foi preparado possui somente o Java Runtime, sem `javac`, Maven ou Gradle.

## Executar no Windows

Na pasta deste arquivo, abra o PowerShell e execute:

```powershell
.
run.ps1
```

Ou compile e execute manualmente:

```powershell
javac -encoding UTF-8 SortLab.java
java SortLab
```

Verificação rápida dos cinco algoritmos (sem abrir a janela):

```powershell
javac -encoding UTF-8 SortLab.java
java SortLab --self-test
```

## Usar

1. Em **Gerador de dados**, crie dados em um dos quatro cenários ou digite inteiros separados por vírgulas, espaços ou ponto e vírgula.
2. Em **Importação de arquivos**, selecione um TXT ou CSV simples de números. Linhas iniciadas por `#` são ignoradas.
3. Em **Execução e comparação**, selecione um algoritmo ou execute os cinco. Ajuste o número de repetições e exporte os resultados como CSV.
4. Consulte medições em **Gráficos** e execuções anteriores em **Histórico**. O histórico fica em `~/.sortlab/history.csv`.
5. **Visualização** anima conjuntos de até 250 valores. A visualização é independente das medições.

Bubble, Selection e Insertion têm desempenho quadrático; prefira Merge ou Quick para conjuntos grandes. Os tempos dependem do hardware, da JVM e das entradas. O gráfico disponível usa barras em escala logarítmica para evitar que valores lentos escondam os demais.

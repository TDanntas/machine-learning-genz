# machine-learning-genz
# Binary Classification of Gen Z Social Media Addiction 📱

Este repositório verifica se um usuário Gen Z possui **alto nível de vício (`High`)** ou não em redes sociais. O projeto aborda desde a Análise Exploratória de Dados (EDA) até a criação de um pipeline.

**Autor:** [Seu Nome]  
**ID / Registro:** [Seu RA]

---

## 📌 Visão Geral do Projeto

O objetivo principal deste desafio é construir um modelo de Machine Learning capaz de classificar o nível de vício de usuários Gen Z em redes sociais com base em seu comportamento digital. A métrica de avaliação é o **Matthews Correlation Coefficient (MCC)**, que mede a qualidade de classificações binárias mesmo em cenários de desbalanceamento de classes.

---

## 🗂️ Dicionário de Dados (Principais Features)

O conjunto de dados contém diversas colunas descrevendo o comportamento digital dos usuários. No escopo deste pipeline, foram selecionadas manualmente **5 características cruciais** baseadas em relevância estatística para o treinamento do modelo:

* **`age`**: Idade do usuário Gen Z (13 a 27 anos).
* **`gender`**: Gênero do usuário — Male, Female, Other.
* **`country`**: País de origem (7 países).
* **`daily_usage_hours`**: Horas diárias totais em redes sociais (`float64`).
* **`primary_platform`**: Plataforma principal utilizada — TikTok, Instagram, YouTube, Twitter, Snapchat (categórico).
* **`num_platforms_used`**: Número de plataformas diferentes utilizadas (`int64`).
* **`purpose`**: Propósito de uso — Education, Socializing, Entertainment, News, Content Creation (categórico).
* **`avg_session_minutes`**: Duração média de cada sessão em minutos (`float64`).
* **`night_usage`**: Se o usuário usa redes sociais à noite — 0 ou 1 (`int64`).
* **`mental_health_score`**: Pontuação de saúde mental (`float64`).
* **`addiction_level`**: Variável alvo — **High** (`1`) ou Medium/Low (`0`).
* **`screen_time_before_sleep`**: Tempo de tela antes de dormir em minutos (`float64`).

---

## 🛠️ Etapas do Pipeline de Machine Learning

O desenvolvimento dentro do notebook seguiu rigorosamente as melhores práticas da Ciência de Dados:

### 1. Análise Exploratória de Dados (EDA)
* Utilização de `df.info()` e `df.describe()` para entender tipos de variáveis e dispersão estatística.
* Análise de histogramas e distribuições de frequência para identificar o comportamento natural das variáveis numéricas e categóricas.

### 2. Limpeza de Dados e Imputação
* **Remoção de Duplicadas:** Eliminação de registros idênticos para evitar viés no aprendizado do classificador.
* **Imputação Estratégica:**
    * **Variáveis Numéricas:** Preenchimento de dados ausentes utilizando a **Mediana**.
    * **Variáveis Categóricas:** Preenchimento de dados ausentes utilizando a **Moda**.

### 3. Encoding de Variáveis Categóricas
* Implementado o **Target Encoding** manual nas features `primary_platform` e `purpose`, estruturado a partir do conjunto de treino para evitar Data Leakage.

### 4. Divisão Estratificada (Train-Test Split)
* Separação dos dados em 80% para treinamento e 20% para validação.
* Aplicação de amostragem **estratificada** (`stratify=y`) garantindo proporção das classes em ambos os conjuntos.

### 5. Treinamento e Validação
* **Modelo Principal:** `HistGradientBoostingClassifier`.
* **Modelo Alternativo:** `RandomForestClassifier`.
* Avaliação com **MCC (Matthews Correlation Coefficient)**.

### 6. Avaliação Final
* Matriz de Confusão, Curvas ROC e comparativo de MCC entre os dois modelos.

---

## 📈 Resultados Obtidos

* O modelo conseguiu classificar com boa precisão usuários com alto nível de vício em redes sociais.
* A escolha do `HistGradientBoostingClassifier` combinada ao Target Encoding gerou previsões consistentes.

---

## 💻 Como Executar o Projeto

### Pré-requisitos
Certifique-se de ter instalado o Python 3.12+, git e as seguintes dependências:
```bash
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn
```

Clone o repositório:
```bash
git clone https://github.com/[seu-usuario]/machine-learning-genz.git
```

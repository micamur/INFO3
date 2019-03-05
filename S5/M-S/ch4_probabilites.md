% Chapitre 4 - Probabilités
% Julien GREPAT (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 15 février 2019

# 1 - Introduction

On considère une expérience aléatoire.  L'ensemble des futurs possibles est noté $\Omega$. Un événement est un sous ensemble $A$ de $\Omega$. L'ensemble des événements de $\Omega$ que l'on peut considérer est la tribu $\mathcal{F}$

$A, B \in \mathcal{F}$ alors $A \cup B \in \mathcal{F}$, $A \cap B \in \mathcal{F}$, $\overline{A} \in \mathcal{F}$

La probabilité $\mathcal{P} : \left\{\begin{array}{rcl} \mathcal{F} & \rightarrow & [0, 1]\\A & \mapsto & \mathcal{P}(A) \end{array}\right.$ est la fréquence théorique de l'évènement $A$ dans $\Omega$.

$\mathcal{P}$ est une mesure :

- Soit $A, B \in \mathcal{F}$ et $A \cap B = \emptyset$ alors $\mathcal{P}(A \cup B) = \mathcal{P}(A) + \mathcal{P}(B)$
- $\mathcal{P}(\emptyset) = 0$ et $\mathcal{P}(\Omega) = 1$

**Propriétés.**
- $\mathcal{P}(A \cup B) = \mathcal{P}(A) + \mathcal{P}(B) - \mathcal{P}(A \cap B)$
- $\mathcal{P}(A \cup B) \leq \mathcal{P}(A) + \mathcal{P}(B)$
- $\mathcal{P}(A \backslash B) = \mathcal{P}(A) - \mathcal{P}(A \cap B)$
- etc.

**Définition.** Probabilités conditionnelles : soient $A, B \in \mathcal{F}$. Supposons que $A$ se réalise. On mesure ce qu'il "reste" de $B$ dans $A$.

$$
\mathcal{P}(B|A) = P_A(B) = "{\text{ mesure }(A \cap B) \over \text{ mesure } (A)} \times {\text{ mesure } \Omega \over \text{ mesure } \Omega }" = {\mathcal{P}(A \cap B) \over \mathcal{P}(A)}
$$

**Définition.** $A, B \in \mathcal{F}$ sont indépendants si $\mathcal{P}_A(B) = \mathcal{P}(B)$

On a $\mathcal{P}_A(B) = {\mathcal{P}(A \cap B) \over \mathcal{P}(A)} \Leftrightarrow \mathcal{P}(A \cap B) = \mathcal{P}(A)\times\mathcal{P}_A(B)$

Si $A$ et $B$ sont indépendants : $\mathcal{P}(A \cap B) = \mathcal{P}(A)\times\mathcal{P}_A(B) = \mathcal{P}(A) \times \mathcal{P}(B)$

$(\mathcal{B})_{i=1}^n$ est un système complet d'évènements : $\mathcal{B}_i \cap \mathcal{B}_j = \emptyset$ et $\bigcup\limits_{i=1}^{n}  \mathcal{B}_i = \Omega$

**Formule de probabilités totales.** $\mathcal{P}(A) = \sum\limits_{i=1}^{n} \mathcal{P}(A \cap \mathcal{B}_i)$

# 2 - Variables aléatoires

On peut (presque toujours) quantifier les résultats d'une expérience.

$$
\mathcal{P}(X \in [a, b]) = \mathcal{P}(\{\omega \in \Omega : X(\omega) \in [a, b]\})
$$

**Loi de Bernouilli.** Soit $X \sim \mathcal{B}(p)$, $X$ vaut $1$ si réussite avec probabilité $p$ et $0$ sinon (échec).

$$
\mathcal{P}(X = 1) = p\; ;\; \mathcal{P}(X = 0) = 1 - p
$$

**Loi binomiale.** Soit $X \sim \mathcal{B}(n, p)$, $X$ compte le nombre de succès à $n$ expériences de Bernouilli identiques et indépendantes avec probabilité de succès $p$.

$$
\mathcal{P}(X = k) = \begin{pmatrix}
n \\
p \\
\end{pmatrix} p^k(1 - p)^{n - k}
$$

> *Rappel.* $\begin{pmatrix}
n \\
k \\
\end{pmatrix} = {n! \over k!(n-k)!}$

**Loi géométrique.** $X \sim \mathcal{G}(p)$

$X$ donne le rang de la première réussite à une succession d'expériences de Bernouilli indépendantes, identiques et de paramètre $p$.

$$
\mathcal{P}(X = k) = (1 - p)^{k-1}p
$$

**Loi de Poisson.** Soit $X \sim \mathcal{P}(X)$ on a :

$$
\mathcal{P}(X = \lambda) = e^{-\lambda} {\lambda^k \over k!}
$$

> *Remarque.* $e^\lambda = \sum {\lambda^k \over k!}$

On s'intéresse, dans un premier temps aux variables prenant un nombre dénombrable de valeurs ($\mathbb{N}$)

**Loi de probabilité, fonction de répartition.** La loi de probabilité est la donnée de toute les probabilités $P(X=x_k)$.

**Définition.** La fonction de répartition est définie par
$$
F_X(x) = P(X \leq x)
$$

**Théorème.**  La fonction de répartition détermine entièrement une loi de probabilité.


# 3 - Espérance, variance, écart-type

**Définition.** La valeur moyenne des résultats de l'expérience $X$ est nommée **espérance** de $X$, notée $E[X]$ ou $EX$

$$
EX = \sum\limits_{i\ge1} x_i \times P(X=x_i)
$$

> *Remarque.* $EX$ est la valeur que prendrait $X$ si l'expérience n'était pas aléatoire. Si $a \in \mathbb{R}$ est une constante $Ea = a$.

**Propriété.** La moyenne est **linéaire** : $X$, $Y$ variables aléatoire, $\lambda$, $\beta$, $\gamma \in \mathbb{R}$

$$
E[\lambda X + \beta Y + \gamma] \lambda EX + \beta EX + \gamma
$$

**Définition.**  **L'écart-type** est la distance moyenne entre les valeurs de $X$ et son espérance.

$$
\sigma_x = \sqrt{\sum_{i \geq 1} (x_i - EX)^2 P(X = x_i)}
$$

> *Remarque.* Formule de la distance dans $\mathbb{R}^3$ : $\sqrt{(x_B - x_A)^2 + (y_B - y_A)^2 + (z_B - z_A)^2}$

$$
Var X = \sigma_x^2
$$

**Théorème du transfert.** $E\varphi(X) = \sum\limits_{i \geq 1} \varphi(x_i)P(X = x_i)$

> *Remarque.* $VarX = E(X - EX)^2 = E(X^2) - (EX)^2$

**Propriété.** $Var(\alpha X + \beta) = \alpha^2Var X$
Si $X$ et $Y$ sont indépendantes : $Var(X + Y) = VarX + VarY$

**Inégalité de Bienaymé-Tchebychev.** $P( |X - EX| > t) \leq {VarX \over t^2}$

Posons $t = a\sigma$
$$
P(|X - EX| > a\sigma) \leq {VarX \over a^2 \sigma^2} = {1 \over a^2}
$$

Inégalité loin d'être optimale

# 4 - Retour sur les lois usuelles

## Loi de Bernouilli : $X \sim \mathcal{B}(p)$

$$
\begin{array}{lcl}
F_X(x) & = & P(X \le x)\\
 & = & \left\{\begin{array}{lcl}
 0 & \text{ si } & x < 0\\
 P & \text{ si } & 0 \le x < 1\\
 1 & \text{ si } & x \ge 1
 \end{array}\right.\\
& = & p 1_{|[0,1[}(x) + 1_{|[1,+\infty[}(x)
\end{array}
$$

> *Remarque.* $1_{|A}(x) = 1$ si $x \in A$, $0$ sinon.

$$
EX = 1 \times P(X = 1) + 0 \times P(X = 0) = P
$$

$$
\begin{array}{lcl}
VarX & = & E[(X - EX)^2]\\
& = & (1 - p)^2P(X = 1) + (0 - p)^2P(X = 0)\\
& = & (1 - p)^2p + p^2(1 - p) \\
& = & p - p^2\\
& = & p(1-p)
\end{array}
$$

## Loi Binomiale : $X \sim \mathcal{B}(n, p)$

$X_1, \dots, X_n$ lois de Bernouilli de paramètre $p$ _indépendantes_.

$$
X = \sum\limits_{i=1}^{n} X_i
$$

$$
EX = E \sum\limits_{i=1}^{n} X_i = \sum\limits_{i=1}^{n} EX_i = np \text{ (par linéarité)}
$$

$$
\begin{array}{lcl}
Var X & = & Var \sum\limits_{i=1}^{n} X_i\\
& = & \sum\limits_{i=1}^{n} Var X_i = np(1 - p)
\end{array}
$$

**Théorème.** Soit $X \sim \mathcal{B}(n, p)$ et $V \sim \mathcal{B}(m, p)$ indépendantes :

$$
X + Y \sim \mathcal{B}(n+m, p)
$$

## Loi géométrique : $X \sim \mathcal{G}(p)$

$$
P(X = k) = p(1 - p)^{k - 1}
$$

$$
EX = {1 \over p}
$$

$$
VarX = {1 - p \over p}
$$

$$
F_x(k) = 1-(1 - p)^k
$$

## Loi de Poisson : $X \sim \mathcal{P}(\lambda)$

$$
P(X = k) = e^{- \lambda} {\lambda^k \over k! }, k \geq 0
$$

$$
\begin{array}{lcl}
EX & = & \sum\limits_{k \geq 0} k e^{- \lambda} {\lambda^k \over k!}\\
& = & e^{-\lambda} \sum\limits_{k \geq 1} {k \lambda^k \over k!}
\end{array}
$$

$$
e^{\lambda} = \sum\limits_{k \geq 0} {\lambda^k \over k!}
$$

$$
\begin{array}{lcl}
{\partial e^\lambda \over \partial \lambda} & = & \sum\limits_{k \ge 0} {\partial \lambda (k/k!) \over \partial \lambda}\\
 & = & \sum\limits_{k \ge 0} k {\lambda^{k-1} \over k!}\\
\end{array}
$$

$$
e^\lambda = \sum\limits_{k \ge 1} k{\lambda^{k-1} \over k!}
$$

$$
\begin{array}{lcl}
\lambda e^\lambda & = & \sum\limits_{k \ge 1} k{\lambda^{k-1} \over k!}\\
& = & \sum k {\lambda \lambda^{k-1} \over k!}\\
& = & \sum {k\lambda^{k} \over k!}
\end{array}
$$

$$
EX = e^{-\lambda} \times \lambda e^\lambda = \lambda
$$

Tous calculs faits
$$
Var X = \lambda
$$

En pratique, une loi discrète dont l'espérance est très proche de sa variance ($EX = Var X = \lambda$) se modélise par une loi de Poisson.

**Théorème.** Si $X \sim \mathcal{P}(\lambda)$ et $Y \sim \mathcal{P}(\mu)$ indépendantes :

$$
X + Y \sim \mathcal{P}(\lambda + \mu)
$$

**Rappel.** $X \sim \mathcal{B}(n, p)$, $EX = np$, $Var X = np(1-p)$

Si $p$ est petit ($n$ grand) alors $(1 - p) \approx 1$. $EX \approx Var X$

D'où le théorème suivant.

**Théorème.** Si $n$ est grand (en pratique $n \ge 50$) et $p$ petit (en pratique $p < 0,1$) alors :

$$
\mathcal{B}(n, p) \simeq \mathcal{P}(np)
$$

> *Note.* On considère une loi $\mathcal{B}(n,p)$ avec $p$ grand ($p \ge 0,1$), on peut plutôt compter les échecs par une loi Binomiale $\mathcal{B}(n, 1-p)$ avec $1-p$ petit. On utilise alors le théorème précédent.

rooooooooooooose


.

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











.

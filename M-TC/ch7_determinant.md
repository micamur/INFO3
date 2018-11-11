% Chapitre 7 - Déterminant
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 9 novembre 2018

# Rappels

## Matrices $2 \times 2$

Pour une matrice $\begin{pmatrix}
a & b\\
c & d
\end{pmatrix}$ son déterminant vaut $ad - bc$

$$
\begin{pmatrix}
  1 & 1 & 1 & 1\\
  1 & -1 & 0 & 1\\
  1 & 0 & -1 & 2\\
\end{pmatrix}
$$

Plus généralement, on définit le déterminant par récurrence par du **developpment par ligne** (ou par colonne).

## Matrices $3 \times 3$

$$
\begin{vmatrix}
(-1)^{1+1} & (-1)^{1+2} & (-1)^{1+3}\\
(-1)^{2+1} & (-1)^{2+2} & (-1)^{2+3}\\
(-1)^{3+1} & (-1)^{3+2} & (-1)^{3+3}\\
\end{vmatrix}
=
\begin{vmatrix}
+ & - & +\\
- & + & -\\
+ & - & +\\
\end{vmatrix}
$$

$$
\begin{array}{lcl}
\underset{\text{notation classique pour le det}}{\begin{vmatrix}
a & b & c\\
d & e & f\\
g & h & i\\
\end{vmatrix}}
& = &
a \times
\begin{vmatrix}
e & f\\
h & i\\
\end{vmatrix}
- b \times
\begin{vmatrix}
d & f\\
g & i\\
\end{vmatrix}
+ c \times
\begin{vmatrix}
d & e\\
g & h\\
\end{vmatrix}
\text{ (ligne)}\\
& = & c \times
\begin{vmatrix}
d & e\\
g & h\\
\end{vmatrix}
- f \times
\begin{vmatrix}
a & b\\
g & h\\
\end{vmatrix}
+ i \times
\begin{vmatrix}
a & b\\
d & e\\
\end{vmatrix}
\text{ (colonne)}\\
\end{array}
$$

*Exemple.*

$$
\begin{vmatrix}
1 & 1 & 1\\
2 & 0 & 1\\
1 & -1 & 1\\
\end{vmatrix}
=
- 1 \begin{vmatrix}
2 & 1\\
1 & 1\\
\end{vmatrix}
+ 0 \begin{vmatrix}
1 & 1\\
1 & 1\\
\end{vmatrix}
+ 1 \begin{vmatrix}
1 & 1\\
2 & 1\\
\end{vmatrix}
= -1 -1 = \boxed{-2}
$$

> *Remarque.* On peut appliquer cette même méthode pour les matrices carées plus grandes.

## Généralisation

En pratique, on fait des opérations sur les lignes et/ou les colonnes pour mettre plein de $0$ dans la matrice.

**Opérations possibles**
1. $L_i \leftarrow L_i + \lambda L_j (\text{ou }C_i \leftarrow C_i + \lambda C_j),\ i \neq j$
2. $L_i \leftarrow \lambda L_i (\text{ou }C_i \leftarrow \lambda C_i)$
  > Cette opération multiplie le déterminant par $\lambda$ !
3. $L_i \leftrightarrow L_j (\text{ou }C_i \leftrightarrow \lambda C_j),\ i \neq j$
  > Cette opération change le signe du déterminant

*Exemple.*
$$
\begin{vmatrix}
1 & 1 & -1\\
1 & 0 & 1\\
2 & 1 & 1\\
\end{vmatrix}
=
\underset{C_3 - C_1 \rightarrow C_3}{\begin{vmatrix}
1 & 1 & -2\\
1 & 0 & 0\\
2 & 1 & -3\\
\end{vmatrix}}
=
- 1 \begin{vmatrix}
1 & -2\\
1 & -3\\
\end{vmatrix}
= \boxed{1}
$$

## Intérêt principal du déterminant

**Théorème.** Si $A \in M_n(\mathbb{R})$,
A inversible $\Leftrightarrow det(A) \neq 0$

> *Remarque.* Pour le determinant $3 \times 3$, on a une formule "du genre $ad - bc$" appelée la règle de Sarrus :
>
> $$
> \text{Soit }
> A =
> \begin{bmatrix}
> a & b & c\\
> d & e & f\\
> g & h & i\\
> \end{bmatrix}
> $$
>
> $$\text{ Alors }det(A) = aei + bfg + cdh - ceg - afh - bdi$$













.

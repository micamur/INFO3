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

$$
\begin{vmatrix}
2 & 1 & 1\\
1 & 2 & 1\\
1 & 1 & 2\\
\end{vmatrix}
\underset{C_1 \leftarrow C_1+C_2+C_3}{=}
\begin{vmatrix}
4 & 1 & 1\\
4 & 2 & 1\\
4 & 1 & 2\\
\end{vmatrix}
\underset{C_1 \leftarrow C_1 / 4}{=}
4
\begin{vmatrix}
4 & 1 & 1\\
4 & 2 & 1\\
4 & 1 & 2\\
\end{vmatrix}
\underset{C_3 \leftarrow C_3 - C_1}{\underset{C_2 \leftarrow C_2 - C_1}{=}}
4
\begin{vmatrix}
1 & 0 & 0\\
1 & 1 & 0\\
1 & 0 & 1\\
\end{vmatrix}
=
4
$$

## Propriétés importantes du det

- $det(AB) = det(A)det(B)$
- $det(A^{-1}) = {1 \over det(A)}$
- $\boxed{det(A + B) \neq det(A) + det(B)}$

# Diagonalisation de matrices

$A \in M_n(\mathbb{R})$

**But**: "simplifier" $A$ en la diagonalisant pour que les calculs soient plus simples.

> *Remarque.*
>
> $$
> A =
> \begin{pmatrix}
> 1 & 0 & 0 \\
> 0 & 2 & 0 \\
> 0 & 0 & 3
> \end{pmatrix}
> $$
>
>- Calculer avec $A$ c'est très facile
>- Résoudre des systèmes $AX = b$ c'est très facile
> -
>  $$
>  A^n =
>  \begin{pmatrix}
>  1^n & 0 & 0\\
>  0 & 2^n & 0\\
>  0 & 0 & 3^n
>  \end{pmatrix}
>  $$

*Exemple.* Étude d'une population de lapins :

$$
\begin{array}{lcl}
n_b (t) & = & \text{nombre de bébés au temps t}\\
n_a (t) & = & \text{nombre d'adultes au temps t}\\
N(t) & = & \begin{pmatrix}
n_b(t)\\
n_a(t)
\end{pmatrix}
\end{array}
$$

$$
\begin{array}{lcl}
n_b(t+1) & = & \lambda n_a(t) \text{ avec } \lambda \text{ le taux de natalité} \\
n_a(t+1) & = & \epsilon_b n_b(t) \text{ avec } \epsilon_b \text{ le taux de survie des bébés}
\end{array}
$$

$$
N(t + 1) =
\begin{pmatrix}
0 & \lambda \\
\epsilon_b & 0
\end{pmatrix} N(t)
$$

Donc étudier l'évolution de la popultaion des lapins revient à comprendre $A^N$.

## Bases et changement de bases

**Définition.** $E = \mathbb{R}^n$
Une **base** de $E$, c'est une famille $e_1, \dots, e_n$ de $n$ vecteurs tq $\forall u \in \mathbb{R}^n, \exists !\, (\lambda_1, \dots, \lambda_n)\in \mathbb{R}$ tq
$$u = \lambda_1e_1 + \dots + \lambda_ne_n$$

$\lambda_1,\dots,\lambda_n$ s'appellent les **coordonnées** de $u$ dans la base $(e_1,\dots,e_n)$

*Exemple.* Soient $E=\mathbb{R}^2$ et $B = ((1,0),(0,1))$ alors $(x,y) = x(1,0)+y(0,1)$

![Schéma]()

*Exemple.* Soient $E=\mathbb{R}^2$ et $B = ((1,1),(-1,1))$ alors quelles sont les coordonnées de $(x,y)$ dans la base $((1,1),(-1,1))$ ?

$$
(x,y) = a(1,1) + b(-1,1)
$$

$$\Updownarrow$$

$$
\begin{array}{lcl}
\begin{cases}
x = a - b\\
y = a + b\\
\end{cases}
& \Leftrightarrow &
\begin{cases}
x = a - b\\
x+y = 2a\\
\end{cases} \\
& \Leftrightarrow &
\begin{cases}
b = a-x = {y-x \over 2}\\
a = {x+y \over 2}\\
\end{cases}
\end{array}
$$

Ainsi les coordonnées de $\begin{pmatrix}
x\\ y \\
\end{pmatrix}$ dans $B = ((1, 1), (-1, 1))$ sont $\begin{pmatrix}
{x + y \over 2} \\
{y - x \over 2}
\end{pmatrix}$

![Schéma]()

$$
\begin{pmatrix}
x\\
y\\
\end{pmatrix}_{((1,0),(0,1))}
= \begin{pmatrix}
{x+y \over 2}\\
{y-x \over 2}\\
\end{pmatrix}_{((1,1),(-1,1))}
$$

*Exemple.*

$$
\begin{pmatrix}
1\\
2\\
\end{pmatrix}_{((1,0),(0,1))}
= \begin{pmatrix}
{1+2 \over 2}\\
{2-1 \over 2}\\
\end{pmatrix}_{((1,1),(-1,1))}
= \begin{pmatrix}
3/2\\
1/2\\
\end{pmatrix}_{((1,1),(-1,1))}
$$

## Changement de base en général

Soient $B = (e_1, \dots, e_n)$ une base de $E = \mathbb{R}$, $B' = (e_1', \dots, e_n')$ une autre base de $E = \mathbb{R}^n$

Comment on passe de $B$ à $B'$ et inversement ?

$$
P_{B' \rightarrow B} = \begin{pmatrix}
C1 & C2 & C3\\
\end{pmatrix}
$$

Avec $C_1$ les coordonnées de $e'_1$ dans $B$, $C_2$ les coordonnées de $e'_2$ dans $B$ et $C_3$ les coordonnées de $e'_3$ dans $B$.

On a alors

$$
P_{B' \rightarrow B} \times \begin{pmatrix}
\vdots \\
\end{pmatrix}_{B'} = \begin{pmatrix}
\vdots \\
\end{pmatrix}_B
$$

$$
P_{B \rightarrow  B'} = \begin{pmatrix}
C1 & C2 & C3\\
\end{pmatrix} = P^{-1}_{B' \rightarrow B}
$$

Avec $C_1$ les coordonnées de $e_1$ dans $B'$, $C_2$ les coordonnées de $e_2$ dans $B'$ et $C_3$ les coordonnées de $e_3$ dans $B'$.

$$
\begin{array}{lcl}
Matrice & \leftrightarrow & \text{application}\\
A \in M_n(\mathbb{R}) & \leftrightarrow & X \in \mathbb{R} \rightarrow AX \in \mathbb{R}
\end{array}
$$

## Diagonalisation

**Définition.** $A \in \mathcal{M}_n(\mathbb{R})$ est **diagonalisable** si $\exists P$ inversible telle que $P^{-1}AP = \begin{pmatrix}
\lambda_1 & & 0\\
& \ddots & \\
0 & & \lambda_n
\end{pmatrix} = D$

> *Remarque.* $P^{-1}AP = D \Leftrightarrow A = PDP^{-1}$
>$$
>\begin{array}{lcl}
> AX_B & = & PDP^{-1}X_B\\
> & = & P(D{(P^{-1}(X_B))})\\
> & = & PDX_{B'}\\
> & = & (DX_{B'})_B
>\end{array}
>$$

> **Attention.** Toutes les matrices ne sont pas diagonalisables.
>
>*Exemple.* $\begin{pmatrix}
>1 & 1\\
>0 & 1
>\end{pmatrix}$

Comment trouve-t-on $D$ et $P$ ?
### Commencons par $D$

**Définition.** $A \in \mathcal{M}_n(\mathbb{R})$ le polynôme caractéristique de $A$ est le polynôme, en $\lambda$, $det(\lambda I_n - A)$.

*Exemple.* $A = \begin{pmatrix}
1 & 1\\
0 & 1
\end{pmatrix}$

$$
\begin{array}{lcl}
\chi_A(\lambda) & = & \begin{vmatrix}
\lambda - 1 & -1\\
0 & \lambda - 1
\end{vmatrix}\\
 & = & (\lambda - 1)^2\\
\end{array}
$$

*Exemple.* $A = P \underset{= D}{\begin{pmatrix}
\lambda_1 & 0 & 0\\
0 & \lambda_2 & 0\\
0 & 0 & \lambda_3\\
\end{pmatrix}} P^{-1}$

$$
\begin{array}{lcl}
\chi_A(\lambda) & = & det(\lambda I_n - PDP^{-1})\\
 & = & det(\lambda PP^{-1} - PDP^{-1})\\
 & = & det(P(\lambda I_n - D)P^{-1})\\
 & = & det(P) det(\lambda I_n - D) det(P^{-1})\\
 & = & \lambda I_n - D\\
 & = & \chi_D(\lambda)\\
 & = & \begin{vmatrix}
 \lambda - \lambda_1 & 0 & 0\\
 0 & \lambda - \lambda_2 & 0\\
 0 & 0 & \lambda - \lambda_3\\
 \end{vmatrix}\\
 & = & (\lambda - \lambda_1)(\lambda - \lambda_2)(\lambda - \lambda_3)
\end{array}
$$

**Preposition.** Si $A$ est diagonalisable, alors les racines de $\chi_A(\lambda)$ sont exactement les termes diagonaux de $D$

**Définition.** Les racines de $\chi_A$ sont appelées les **valeurs propres** de $A$.

> *Remarque.* Si $\lambda$ est une valeur propre de $A$ alors $\exists x \neq 0$ tq $AX = \lambda X$.

*Exemple.* $A = \begin{pmatrix}
1 & 1\\
0 & 1\\
\end{pmatrix}, \chi_A(\lambda) = (\lambda - 1)^2$ et $A \begin{pmatrix}
1\\
0\\
\end{pmatrix} = 1 \times \begin{pmatrix}
1\\
0\\
\end{pmatrix}$

> *Remarque.* $A = \begin{pmatrix}
> 1 & 1\\
> 0 & 1
> \end{pmatrix}$ n'est pas diagonalisable.
>
> La seule valeur propre de $A$ est $1$. Donc si $A$ était diagonalisable on aurait
>
$$
\begin{array}{lcl}
A & = & P \begin{pmatrix}
1 & 0\\
0 & 1
\end{pmatrix} P^{-1} \\
 & = & P I_2 P^{-1} \\
 & = & PP^{-1} \\
 & = & I_2 \\
\end{array}
$$

Donc $A = I_2 = \begin{pmatrix}
1 & 0\\
0 & 1
\end{pmatrix}$ absurde

Donc $A$ n'est pas diagonalisable !

> *Remarque.* l'ensemble de valeurs propre s'apelle le **sprecte de $A$** et est noté $S_p(A)$

### Comment trouve-t-on $P$ ?

**Définition.** Soient $A \in \mathcal{M}_n(\mathbb{R})$ et $\lambda$ une valeur propre de $A$. Un **vecteur propre** de $A$ associé à $\lambda$ est un vecteur $X \neq 0$ tel que :

$$AX = \lambda X$$


**Définition.** **L'espace propre** de $A$ associé à $\lambda$ est noté :
$$
E_{\lambda} = \{ x \in \mathbb{R}^n |\, AX = \lambda X\}
$$

Pour trouver $P$, on cherche une base faite de vecteurs propres.
Il faut donc déterminer $E_{\lambda}\; \forall \lambda \in S_p(A)$

*Exemple.* $\begin{pmatrix}
1 & 1\\
0 & 2
\end{pmatrix} = A$

$$
\begin{array}{lcl}
\chi_A(\lambda) & = & \begin{vmatrix}
\lambda - 1 & - 1\\
0 & \lambda - 2
\end{vmatrix}\\
 & = & (\lambda - 1)(\lambda - 2)\\
\end{array}
$$

Donc $S_P(A) = \{1,2\}$

### Calcul des espaces propres

$$E_2 = \{X \in \mathbb{R}^2\ |\ \underset{(A-2I_2)X = 0}{AX = 2X}\}$$

$$
\left\{\begin{array}{lcl}
-x+y & = & 0\\
0 & = & 0\\
\end{array}\right.
\Leftrightarrow
x = y
$$

$$
E_2 = \{y \begin{pmatrix}
1 \\
1
\end{pmatrix} |\; y \in \mathbb{R}\}
$$

Et

$$E_1 = \{X \in \mathbb{R}^2\ |\ \underset{(A-I_2)X = 0}{AX = X}\}$$

$$
\left\{\begin{array}{lcl}
y & = & 0\\
y & = & 0\\
\end{array}\right.
\Leftrightarrow
y = 0
$$

$$
E_1 = \{X \begin{pmatrix}
1 \\
0
\end{pmatrix} |\; X \in \mathbb{R}\}
$$

$$
\text{Prenons alors }
P = \begin{pmatrix}
1 & 1\\1 & 0\\
\end{pmatrix}$$

$$
\text{On a donc }
P^{-1} = - \begin{pmatrix}
0 & -1\\
-1 & 1
\end{pmatrix} = \begin{pmatrix}
0 & 1\\
1 & -1
\end{pmatrix}
$$

$$
\boxed{
P^{-1}AP = \begin{pmatrix}
2 & 0\\
0 & 1
\end{pmatrix}}
$$

*Exemple.* Soit $A = \begin{pmatrix}
0 & -1\\
1 & 0\\
\end{pmatrix}$ alors $\chi_A(\lambda) = \begin{vmatrix}
\lambda & 1\\
-1 & \lambda \\
\end{vmatrix} = \lambda^2 + 1$

  Il n'y a pas de racine réelle, donc $A$ n'est pas diagonalisable.


*Exemple.* $\begin{pmatrix}
0 & 1 & 1\\
1 & 0 & 1\\
1 & 1 & 0
\end{pmatrix} = 1$

$$
\chi_A(\lambda) = \begin{vmatrix}
\lambda & -1 & & -1\\
-1 & \lambda & - 1\\
-1 & -1 & \lambda
\end{vmatrix} = (\lambda - 2)(\lambda + 1)^2
$$

Donc $S_P(A) = \{-1,2\}$

$$
E_2 = \{X \in \mathbb{R}^2\ |\  (A - 2I_3)X = 0\}
$$

$$
\begin{array}{lcl}
\begin{bmatrix}
-2 & 1 & 1 & | & 0\\
1 & -2 & 1 & | & 0\\
1 & 1 & -2 & | & 0\\
\end{bmatrix}
& \sim &
\begin{bmatrix}
-2 & 1 & 1 & | & 0\\
0 & -3/2 & 3/2 & | & 0\\
0 & 3/2 & -3/2 & | & 0\\
\end{bmatrix}\\
& \sim &
\begin{bmatrix}
-2 & 1 & 1 & | & 0\\
0 & -3/2 & 3/2 & | & 0\\
0 & 0 & 0 & | & 0\\
\end{bmatrix}\\
& \sim &
\begin{bmatrix}
-2 & 1 & 1 & | & 0\\
0 & 1 & -1 & | & 0\\
0 & 0 & 0 & | & 0\\
\end{bmatrix}\\
& \sim &
\begin{bmatrix}
-2 & 0 & -2 & | & 0\\
0 & 1 & -1 & | & 0\\
0 & 0 & 0 & | & 0\\
\end{bmatrix}\\
& \Leftrightarrow &
\left\{\begin{array}{lcl}
-2x-2z & = & 0\\
y-z & = & 0\\
\end{array}\right.\\
& \Leftrightarrow &
\left\{\begin{array}{lcl}
x & = & z\\
y & = & z\\
\end{array}\right.
\end{array}
$$

$$
E_2 = \{z \begin{pmatrix}
1\\ 1\\ 1
\end{pmatrix} |\; z \in \mathbb{R}\}
$$

$$
\begin{array}{lcl}
E_1 & = & \{x \in \mathbb{R}^2 |\; (A + I_n)x = 0\}\\
 & = & \begin{cases}
 x+ y + z = 0\\
 x + y + z = 0\\
 x + y + z = 0
 \end{cases} \Leftrightarrow x + y + z = 0\\
 \end{array}
$$
$$
\begin{array}{lcl}
E_{-1} & = & \{\begin{pmatrix}
-y -z\\ y\\ z
\end{pmatrix} |\; (y, z) \in \mathbb{R}^2\} \\
& = & \{y \begin{pmatrix}
-1\\ 1\\ 0
\end{pmatrix} + z \begin{pmatrix}
-1\\ 0\\ 1
\end{pmatrix} |\; (y, z) \in \mathbb{R}^2\}
\end{array}
$$

On a alors, pour $P = \begin{pmatrix}
1 & -1 & -1\\
1 & 1 & 0\\
1 & 0 & 1\\
\end{pmatrix}$ la matrice $D = P^{-1}AP = \begin{pmatrix}
2 & 0 & 0\\
0 & -1 & 0\\
0 & 0 & -1\\
\end{pmatrix}$

### Retour aux lapins

$$
N(t+1) = AN(t) \text{ où } A = \begin{pmatrix}
0 & \lambda\\
\epsilon_b & 0\\
\end{pmatrix}
$$

Regardons si $A$ est diagonalisable.

$$
\chi_A(X) = \begin{vmatrix}
X & -\lambda\\
-\epsilon_b & X\\
\end{vmatrix}
= X^2 - \lambda \epsilon_b = (X - \sqrt{\lambda \epsilon_b}) (X + \sqrt{\lambda \epsilon_b})
$$

$$
\begin{array}{c}
\text{Donc }
S_p(A) = \{-\sqrt{\lambda \epsilon_a}, \sqrt{\lambda \epsilon_b}\}\\
\\
\text{ et donc } \exists P \text{ inversible telle que }\\
\\
P^{-1}AP = \begin{pmatrix}
-\sqrt{\lambda \epsilon_a} & 0\\
0 & \sqrt{\lambda \epsilon_b}
\end{pmatrix}
\end{array}
$$

Étudions $A^n$
$$
A = PDP^{-1}
$$
$$
\begin{array}{lcl}
A^2 & = & (PDP^{-1})(PDP^{-1}) \\
 & = & PD^2P^{-1}\\
\end{array}
$$
$$
A^3 = PD^3P^{-1}
$$
Et
$$
A^n = PD^nP^{-1}
$$

Il suffit donc de comprendre $D^n = \begin{pmatrix}
(-\sqrt{\lambda \epsilon_b})^n & 0 \\
0 & (\sqrt{\lambda \epsilon_b})^n \\
\end{pmatrix}$

On a alors $3$ cas de figure :

- **Cas 1** $\epsilon_b \lambda = 1$ :
  cas stationnaire, la popultaion reste a peu près la même
- **Cas 2** $\epsilon_b \lambda > 1$ : alors $\sqrt{\lambda \epsilon_b} > 1$ et $(\sqrt{\lambda \epsilon_b})^n \xrightarrow[n \to \infty]{} +\infty$
- **Cas 3** $\epsilon_b \lambda < 1$ :
  alors $\sqrt{\epsilon_b \lambda} < 1$ et $\sqrt{\epsilon_b \lambda} \xrightarrow[n \to +\infty]{} 0$

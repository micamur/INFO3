% Chapitre 3 - Algèbre linéaire
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Mardi 25 Septembre 2018

remi-molinier@univ-grenoble-alpes.fr

# A) Rappels

## 1) Systèmes linéaires

*Exemple.*
$$
\left \{
\begin{array}{c @{=} c}
  2x + y + z + t = 1 \\
  x - y - z = 0 \\
\end{array}
\right.
$$

### a) Interprétation géométrique

- Avec 2 variables :

$$
\left \{
\begin{array}{c @{=} c}
  x + y = 1 \\
  x - y = 0 \\
\end{array}
\right.
$$

\begin{figure}
\centering
\includegraphics[height=10cm, angle=90]{res/mathTC1.png}
\end{figure}

Résoudre un système avec deux variables revient à chercher l'intersection de droites du plan, donc un ont ou une droite.

\pagebreak

- Avec 3 variables :

$$
\left \{
\begin{array}{c @{=} c}
  x + y + z = 1\ (\mathcal{P}1) \\
  x - y - z = 0 \\
\end{array}
\right.
$$

\begin{figure}
\centering
\includegraphics[height=10cm, angle=90]{res/mathTC3.png}
\end{figure}

Résoude un système avec trois variables revient à chercher l'intersection de plans de l'espace $\mathbb{R}^3$, donc une droite ou un plan.

### b) Différentes façons d'écrire un système

- Avec des équations :

*Exemple.*
$$
  \left \{
  \begin{array}{c @{=} c}
    x + y + z + t = 1\\
    x - y + t = 0 \\
    x - z + 2t = 2
  \end{array}
  \right.
$$

- Avec la matrice augmentée du système

$$
\begin{bmatrix}
  1 & 1 & 1 & 1 & | & 1\\
  1 & -1 & 0 & 1 & | & 0\\
  1 & 0 & -1 & 2 & | & 2\\
\end{bmatrix}
$$

Les lignes sont $E1$, $E2$ et $E3$ ; les colonnes de gauche sont $x$, $y$, $z$ et $t$.

- Forme matricielle

$$AX = b$$

$$ A =
  \begin{bmatrix}
    1 & 1 & 1 & 1\\
    1 & -1 & 0 & 1\\
    1 & 0 & -1 & 2\\
  \end{bmatrix}
  X =
  \begin{bmatrix}
    x \\
    y \\
    z \\
    t \\
  \end{bmatrix}
  b = \begin{bmatrix}
    1 \\
    0 \\
    2 \\
  \end{bmatrix}
$$

\pagebreak

### c) Rappel du produit matriciel

Possible ssi $Nb\ col\ A = Nb\ ligne\ B$
$$A \in \mathbb{R}^{m \times n},\ B \in \mathbb{R}^{n \times l}$$

*Exemple.*

$$
  \begin{bmatrix}
    1 & 1 & 1 & 1\\
    1 & -1 & 0 & 1\\
    1 & 0 & -1 & 2\\
  \end{bmatrix}
  \times
  \begin{bmatrix}
    x \\
    y \\
    z \\
    t \\
  \end{bmatrix} =
  \begin{bmatrix}
    x + y + z + t\\
    x - y + t\\
    x - z + 2t\\
  \end{bmatrix}
$$

### d) Opérations élémentaires

- Permutation
  - Système
  $Ei \leftrightarrow Ej$
  *Exemple.*
  $$
    \left \{
    \begin{array}{c @{=} c}
      x + y = 0\\
      x - y = 1\\
    \end{array}
    \right.
    \Leftrightarrow
    \left \{
    \begin{array}{c @{=} c}
      x - y = 1\\
      x + y = 0\\
    \end{array}
    \right.
  $$

  - Matrice augmenté
  $Li \leftrightarrow Lj$
  *Exemple.*
  $$
  \begin{bmatrix}
    1 & 1 & | & 0\\
    1 & -1 & | & 1\\
  \end{bmatrix} =
  \begin{bmatrix}
    1 & -1 & | & 1\\
    1 & 1 & | & 0\\
  \end{bmatrix}
  $$

  - Forme matricielle : multiplier à gauche par (lignes $j$ et $i$, colonnes $i$ et $j$)
  $$
  \begin{bmatrix}
    1      & \cdots  & \cdots & \cdots & 1\\
    \vdots & 0       & \cdots & 1      & \vdots\\
    \vdots & \vdots  & \ddots & \vdots & \vdots\\
    \vdots & 1       & \cdots & 0      & \vdots\\
    1      & \cdots  & \cdots & \cdots & 1\\
  \end{bmatrix}
  $$

- Dilatation
  - Système
  $Ei \leftarrow \lambda Ei$
  *Exemple.*
  $$
  \left \{
  \begin{array}{c @{=} c}
    x + y = 0\\
    x - y = 1\\
  \end{array}
  \right.
  \Leftrightarrow
  \left \{
  \begin{array}{c @{=} c}
    x + y = 1\\
    2x - 2y = 2\\
  \end{array}
  \right.
  $$
- Matrice augmenté
  $Li \leftarrow \lambda Li$
  *Exemple.*
  $$
    \begin{bmatrix}
      1 & 1 & | & 0\\
      1 & -1 & | & 1\\
    \end{bmatrix} =
    \begin{bmatrix}
      1 & 1 & | & 0\\
      2 & -2 & | & 2\\
    \end{bmatrix}
  $$

- Forme matricielle **incomplet**

- Combinaison linéaire d'équation
  - Système
    $Ei \leftarrow Ei + \lambda Ej$
    *Exemple.*
    $$
    \left \{
    \begin{array}{c @{=} c}
      x + y = 0\\
      x - y = 1\\
    \end{array}
    \right.
    \Leftrightarrow
    \left \{
    \begin{array}{c @{=} c}
      x + y = 0\\
      - 2y = 0\\
    \end{array}
    \right.
    $$

  - Matrice augmentée
    $Li \leftarrow Li + \lambda Lj$
    *Exemple.* ($L2 \leftarrow L2 - L1$)
    $$
      \begin{bmatrix}
        1 & 1 & | & 0\\
        1 & -1 & | & 1\\
      \end{bmatrix}
      \sim
      \begin{bmatrix}
        1 & 1 & | & 0\\
        0 & -2 & | & 1\\
      \end{bmatrix}
    $$

  - Forme matricielle **incomplet**

\pagebreak

### e) Algorithme de Gauss

- **Étape 1.** Avec les opérations élémentaires (surtout la 3ième) on met le système sous forme triangulaire en utilisant des **pivots**
  *Exemple.*
  $$
    \left \{
    \begin{array}{c @{=} c}
      x + y + z = 1 \\
      - x - y - z - 2t = 1 \\
      - x + y + 2z + t = 1 \\
    \end{array}
    \right.
  $$

  $$
    \begin{bmatrix}
      1 & 1 & 1 & 1 & | & 1 \\
      -1 & -1 & -1 & -2 & | & 1 \\
      1 & 1 & 2 & 1 & | & 1 \\
    \end{bmatrix}
    \underset{\underset{L3 \leftarrow L3 - L1}{L2 \leftarrow L2 + L1}}{\sim}
    \begin{bmatrix}
      1 & 1 & 1 & 1 & | & 1 \\
      0 & 0 & 0 & - 2& | & 2 \\
      0 & 0 & 1 & 0 & | & 0 \\
    \end{bmatrix}
  $$

  $$
    \underset{L3 \leftrightarrow L2}{\sim}
    \begin{bmatrix}
      1 & 1 & 1 & 1 & | & 1 \\
      0 & 0 & 1 & 0 & | & 0 \\
      0 & 0 & 0 & -1 & | & 2 \\
    \end{bmatrix}
  $$

  $$\textrm{(y est "libre")}$$

  $$
    \left \{
    \begin{array}{c @{=} c}
        x + y + z + t = 1 \\
        z = 0 \\
        -t = 2 \\
    \end{array}
    \right.
  $$

- **Étape 2.** Résoudre le système en remontant
  *Exemple.*
  $$
    \left \{
    \begin{array}{c @{=} c}
      x + y + 0 - 2 = 1 \\
      z = 0 \\
      t = -2 \\
    \end{array}
    \right.
    \Leftrightarrow
    \left \{
    \begin{array}{c @{=} c}
      x = 3 - y \\
      z = 0 \\
      t = -2 \\
    \end{array}
    \right.
  $$

  $$
    S =
    \left \{
    \begin{array}{c @{=} c}
      \begin{bmatrix}
        x\\
        y\\
        z\\
        t\\
      \end{bmatrix}
      =
      \begin{bmatrix}
        z-y\\
        y\\
        0\\
        -z\\
      \end{bmatrix}\ |\ y \in \mathbb{R}\\
    \end{array}
    \right \}
  $$

  $$
  S =
  \left \{
  \begin{array}{c @{=} c}
    \begin{bmatrix}
    x\\
    y\\
    z\\
    t\\
    \end{bmatrix} =
  \begin{bmatrix}
    3\\
    0\\
    0\\
    -2\\
    \end{bmatrix} + y
  \begin{bmatrix}
    -1\\
    1\\
    0\\
    0\\
    \end{bmatrix}\ |\ y \in \mathbb{R}
  \end{array}
  \right \}
  $$

  $$
  \textrm{C'est la droite passant par $(3,0,0,-2)$ et de vecteur directeur }
  \begin{bmatrix}
    -1\\
    1\\
    0\\
    0\\
    \end{bmatrix}
  $$

\pagebreak

### f) Ensemble des solutions d'un système

- $S = 0$
  *Exemple.*
  $$
  \left \{
  \begin{array}{c @{=} c}
    x + y = 0 \\
    x + y = 1 \\
  \end{array}
  \right.,
  \begin{bmatrix}
    1 & 1 & | & 0\\
    1 & 1 & | & 1\\
    \end{bmatrix}
  \underset{L2 \rightarrow L2 - L1}{\sim}
  \begin{bmatrix}
    1 & 1 & | & 0\\
    0 & 0 & | & 1\\
  \end{bmatrix}
  0 = 1\ impossible
  $$

- Il y a une unique solution
  *Exemple.*
  $$
    \left \{
    \begin{array}{c @{=} c}
      x+y = 0 \\
      x-y = 1 \\
    \end{array}
    \right.
  $$

  $$
    \begin{bmatrix}
      1 & 1 & | & 0\\
      1 & -1 & | & 1\\
    \end{bmatrix}
    \underset{L2 - L1 \rightarrow L2}{\sim}
    \begin{bmatrix}
      1 & 1 & | & 0\\
      0 & -2 & | & 1\\
    \end{bmatrix}
  $$

  $$
    \left \{
    \begin{array}{c @{=} c}
      x+y = 0 \\
      -2y = 1 \\
    \end{array}
    \right.
    \Leftrightarrow
    \left \{
    \begin{array}{c @{=} c}
      x = -y = 1/2 \\
      y = -1/2 \\
    \end{array}
    \right.
  $$

  $$
    S =
    \begin{Bmatrix}
      1 & 1 & | & 0\\
      0 & -2 & | & 1\\
    \end{Bmatrix}
  $$

- Il y a une infinité de solutions
  *Exemple.*
  $$
    \left \{
    \begin{array}{c @{=} c}
      x+y = 1 \\
      2x+2y = 2 \\
    \end{array}
    \right.
  $$
  $$
    \begin{bmatrix}
      1 & 1 & | & 1\\
      2 & 2 & | & 2\\
    \end{bmatrix}
    \underset{L2 \leftarrow L2 - 2L1}{\sim}
    \begin{bmatrix}
      1 & 1 & | & 1\\
      0 & 0 & | & 0\\
    \end{bmatrix}
  $$
  $$
    \left \{
    \begin{array}{c @{=} c}
      x+y = 0 \\
      0 = 0 \\
    \end{array}
    \right.
    $$
    $$
    S =
    \begin{Bmatrix}
      \begin{bmatrix}
        x \\
        y \\
      \end{bmatrix}
      =
      \begin{bmatrix}
        1 - y\\
        y\\
      \end{bmatrix}
      |\ y \in \mathbb{R}
    \end{Bmatrix}
  $$
  $$
  =
  \begin{Bmatrix}
    \begin{bmatrix}
    x \\ y\\
    \end{bmatrix}
    =
    \begin{bmatrix}
    1 \\ 0\\
    \end{bmatrix}
    + y
    \begin{bmatrix}
    -1 \\ 1\\
    \end{bmatrix}
  \end{Bmatrix}
  $$

Droite passant par (1, 0) et de vecteur directeur $\begin{bmatrix} -1 \\ 1\\ \end{bmatrix}$

\pagebreak

### g) Une variante : Gauss Jordan

- **Étape 1** : Pareil que pour Gauss
- **Étape 2** "annuler les entrée au dessus du pivot en commençant par la fin"
  $$
    \begin{bmatrix}
      1 & 1 & 1 & 1 & | & 1\\
      0 & 1 & 1 & 1 & | & 1\\
      0 & 0 & 0 & 1 & | & 1\\
    \end{bmatrix}
    \underset{\underset{L1 \leftarrow L1 - L3}{L2 \leftarrow L2 - L3}}{\sim}
    \begin{bmatrix}
      1 & 1 & 1 & 0 | & 0\\
      0 & 1 & 1 & 0 | & 0\\
      0 & 0 & 0 & 1 | & 1\\
    \end{bmatrix}
  $$

  $$
    \underset{L1 \leftarrow L1 - L2}{\sim}
    \begin{bmatrix}
      1 & 0 & 0 & 0 & | & 0\\
      0 & 1 & 1 & 0 & | & 0\\
      0 & 0 & 0 & 1 & | & 1\\
    \end{bmatrix}
  $$

  $$
    \left \{
    \begin{array}{c @{=} c}
      x = 0 \\
      y + z = 0 \\
      t = 1 \\
    \end{array}
    \right.
    \Leftrightarrow
    \left \{
    \begin{array}{c @{=} c}
      x = 0 \\
      y = -z \\
      t = 0 \\
    \end{array}
    \right.
  $$

  $$
  S =
  \begin{Bmatrix}
    \begin{bmatrix}x\\y\\z\\t\end{bmatrix}
    =
  \begin{bmatrix}0\\-z\\z\\1\end{bmatrix}
    =
    \begin{bmatrix}0\\0\\0\\1\end{bmatrix}
    + z
    \begin{bmatrix}0\\-1\\1\\0\end{bmatrix}
  \ |\ z \in \mathbb{R}
  \end{Bmatrix}
  $$

## 2) Matrices

$$
  A = \begin{bmatrix}
  a_{11} & \cdots & a_{1m}\\
  a_{21} & \cdots & a_{2m}\\
  \vdots &        & \vdots\\
  a_{n1} & \cdots & a_{nm}\\
  \end{bmatrix} =
  \begin{bmatrix}aij\end{bmatrix}
$$

$$ \mathbb{R}^{m \times n} = \mathcal{M}_{m,n}(\mathbb{R}) = \textrm{ensemble des matrices}\ m \times n$$

### a) Opérations

$A,\ B \in \mathbb{R}^{m \times n},\ \lambda \in \mathbb{R}$

- $A + B = [a_{ij} + b_{ij}]$
- $\lambda 1 = [\lambda a_{ij}$

Muni de ces opérations, $\mathcal{M}_{m, n}$ est un $\mathbb{R}$-espace vectoriel (les règles de calcul avec les vecteurs du $\mathbb{R}^n$ fonctionnent pareil ici).

*Exemples.* Soient $A\ B$ deux matrices, $A+B$ et $3A$.

Si $m=n$ on parle de matrice carrée et on note $\mathbb{R}^{n \times n} = \mathcal{M}_{n,n}(\mathbb{R}) = \mathcal{M}_{n}(\mathbb{R})$

On a maintenant un produit en plus.

> Attention $AB \neq BA$ (en général)
> Le produit n'est pas commutatif !

*Exemples.*

- Essayer avec les matrices $\begin{bmatrix}0&0\\0&1\end{bmatrix}$ et $\begin{bmatrix}0&1\\0&0\end{bmatrix}$
- $(A+B)^2 = A^2 + AB + BA + B^2 \neq A^2 + 2AB + B^2$

\pagebreak

### b) Unité

$$
  I_n =
  \begin{bmatrix}
    1 &        & 0\\
    & \ddots &\\
    0 &        & 1\\
  \end{bmatrix}
$$

### c) Inverse

$$x \in \mathbb{R}^* xx^{-1} = 1$$

Si $A \in \mathcal{M}_n(\mathbb{R})$ est inversible $\exists ! A^{-1} \in \mathcal{M}_n(\mathbb{R})$ telle que $AA^{-1} = I_n$ et $A^{-1}A = I_n$

On peut trouver l'inverse en appliquant la méthode des pivots de Gauss :

$$[A |I_n] \underset{\textrm{Gauss Jordan sur A}}{\sim} [I_n | A^{-1}]$$

Quand $A$ n'est pas inversible, vous ne pourrez pas finir avec $[I_n | A^{-1}]$.

Pour les matrices $2 \times 2$, $A$ est inversible ssi $det() = ad-bc \neq 0$ et alors $A^{-1} = {1 \over det(A)} \begin{bmatrix}d&-b\\-c&a\end{bmatrix}$

**Pourquoi ça marche ?**

$$
AX = I_n \underset{Gauss-Jordan}{\sim} E_3E_2E_1AX = E_3E_2E_2I_n \Leftrightarrow X = E_3E_2E_1I_n = A^{-1}
$$

## 3) Espaces vectoriels

Avoir en tête $\mathbb{R}^n$

Dans $\mathbb{R}^n$ on peut voir chaque point comme un vecteur. On peut alors faire la somme de 2 vecteurs

![Schéma d'un vecteur dans R^3]

On peut alors faire la somme de deux vecteurs

\begin{figure}
\centering
\includegraphics[height=5cm, angle=90]{res/mathTC4.png}
\end{figure}
$$u = \begin{bmatrix} u_1 \\ u_2 \\ \end{bmatrix}\ et\ v = \begin{bmatrix} v_1 \\ v_2 \\ \end{bmatrix}\ u+v = \begin{bmatrix} u_1 + v_1 \\ u_2 + v_2 \\ \end{bmatrix}\ $$

\pagebreak

et multiplier un vecteur par un scalaire

\begin{figure}
\centering
\includegraphics[height=5cm, angle=90]{res/mathTC5.png}
\end{figure}

$$u = \begin{bmatrix} u_1 \\ u_2 \\ \end{bmatrix}\ ,\ \lambda u = \begin{bmatrix} \lambda u_1 \\ \lambda u_2 \\ \end{bmatrix}$$

**Règles de calcul. :**

- $\lambda (u+v) = \lambda u + \lambda v$
- $u + v = v + u$
- $(\lambda + \mu) u = \lambda u + \mu u$
- $\lambda (\mu u) = (\lambda \mu)u = \mu (\lambda u)$
- $(u+v)+w = u+(v+w)$
- $u + 0 = u$
- $1u = u$
- $u + (-1)u = u - u = 0$

(voir la définition d'un espace vectoriel sur Wikipédia)

Plus généralement, un $\mathbb{R}$-espace vectoriel c'est  un ensemble. E dont les éléments sont appelés vecteurs muni d'opérations :

- $+ : \begin{array}{c @{=} c} E \times E \rightarrow E\\
  (u, v) \mapsto u + v \\ \end{array}$
- $\cdot$ : $\begin{array}{c @{=} c}\mathbb{R} \times E \rightarrow E\\
  (\lambda, v) \mapsto \lambda u\\ \end{array}$

qui vérifient les règles de calcul précédentes

*Exemples.*

- $$\mathcal{M}_{m,n} = \mathbb{R}^{m \times n}$$
  $$A + B = [a_{ij} + b_{ij}]$$
  $$\lambda A = [\lambda a_{ij}]$$
- Espaces des fonctions de $\mathbb{R} \rightarrow \mathbb{R}$
  $$E = \{ F:\mathbb{R} \rightarrow \mathbb{R} \}$$
- Suites réelles : $E = \{(u_n)_{n \in \mathbb{R} } | \forall n \in \mathbb{N}, u_n \in \mathbb{R}\}$
  $$
    (u_n) + (v_n) = (u_n + v_n)
  $$
  $$
    \lambda(u_n) = (\lambda u_n)
  $$

\pagebreak

## 4) Sous espaces vectoriels

$E$ est un ev $(E=\mathbb{R}^n)$, un sev de $E$ c'est un sous-ensemble non vide $F$ de $E$ stable par combinaison linéaire
$$x,y \in F \Leftrightarrow \lambda x + \mu y \in F \forall \lambda,\mu \in \mathbb{R}$$

Remarque : Si $F$ est un sev, $O \in F$

*Exemples.*

- Dans $\mathbb{R}^2$
- $\{0\}$ sev de dim 0
- droite passant par 0. sev de dim 1
- $\mathbb{R}^2$. sev de dim 2

![Schéma d'un sev dans R2]

- Dans $\mathbb{R}^3$
- $\{0\}$ sev de dim 0
- droite passant par 0. sev de dim 1
- plan passant par 0. sev de dim 2
- $\mathbb{R}^3$. sev de dim 3

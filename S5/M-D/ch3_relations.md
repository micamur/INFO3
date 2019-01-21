% Chapitre 3 - Relations binaires
% Benjamin WACK (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 3 Décembre 2018

# 1) Notion de relation binaire sur un ensemble $X$

**Définition.** Une **relation binaire** sur $X$ est un ensemble de couples ordonnés $(x, y)$ où $x$ et $y \in X$. Si $R$ est une relation, on dira : $(x, y) \in R$ ou $x\; R\; y$ ou $x$ est en relation avec $y$ (tous synonymes).

Une **relation binaire** est donc une partie du produit cartésien $X^2 = X \times X$. Si $X$ est fini, $card(X^2) = card(X)^2$. Il y a donc $2^{((card\; X)^2)}$ relations distinctes sur $X$ _(si $card\; X = 3$ on en a $2^9$, si $card\; X = 5$ on en a $2^{25}$)_.

Notation à la UML : $X\; \stackrel{\underline{0..*\; \; \; \; 0..*}}{}\; X$

## a) Types de relations particulières

### Définitions

- Une relation est **réflexive** si : $\forall x \in X,\; x\; R\; x$
- Une relation est **transitive** si : $\forall x, y, z \in X,\; (x\; R\; y \land y\; R\; z) \Rightarrow x\; R\; z$
- Une relation est **antisymétrique** si : $\forall x, y \in X,\; (x\; R\; y \land y\; R\; x) \Rightarrow x = y$
- Une relation est **symétrique** si : $\forall x, y \in X,\; (x\; R\; y \Leftrightarrow y\; R\; x)$

### Vocabulaire et exemples

- On dit qu'une relation est un **préordre** si elle est à la fois **réflexive et transitive** (RT).

  *Exemples.*
  - Sur la promo INFO3, "être plus jeune que" à l'année près et au sens large est un préordre
  - Sur $X = \{1, 2, 2', 3\}$ avec $1 \rightarrow \{2,2'\} \rightarrow 3$, $1 \rightarrow 3$, $2 \leftrightarrow 2'$ et chacun $\rightarrow$ avec lui-même, on a un préordre.
    ![Graphe des relations]()

- On dit qu'une relation est un **ordre** si elle est **réflexive, transitive et antisymétrique** (RTA).

  *Exemples.*
  - La relation $\le$ sur $\mathbb{R}$
  - Sur $A^*$, on connaît :
    - l'ordre préfixe $\sqsubseteq$
    - l'ordre lexicographique $\le_{lex}$ (de plus, l'ordre lexicographique est **total**)


> *Remarque.* **Ordre total** = on peut comparer chaque élément avec n'importe quel autre : on a toujours $a \geq_{lex} b$ ou $a \leq_{lex} b$ mais on peut avoir $a \not \sqsubseteq_{lex} b$ et $a \not \sqsupseteq_{lex} b$.

> *Remarque.* Tout ordre est un préordre (par définition).

- On dit qu'une relation est une **équivalence** si elle est **réflexive, transitive et symétrique** (RTS).

  *Exemples.*
  - Toute relation d'équivalence est un préordre
  - Sur $\mathbb{Z}$ la relation "être congru modulo 5" (avoir le même reste)
  - Sur $A^*$, "avoir la même longueur"
  - Sur INFO3, "être né la même année"
  - Plus généralement, "avoir le même quelque chose" donne **toujours** une relation d'équivalence

## b) Représentation sous forme de graphe

Si $X$ est fini, on peut construire un graphe dont les sommets sont les éléments de $X$.
Pour tout couple $(x, y)$ dans $R$, on trace un arc de $x$ vers $y$.

*Exemple.* $X = \{a, b, c, d, e\}$ et $R = \{(a, a), (a, b), (a, d), (b, a), (b, d), (c, a), (c, c)\}$

- ![Graphe des relations]()
- Si $R$ est **réflexive**, on a toutes les boucles $x \rightarrow x$ _(en général on ne les dessine pas)_
- Si $R$ est **symétrique**, on a des arcs de la forme $x \leftrightarrow y$ _(en général on les remplace par un seul trait sans flèche)_
- Si $R$ est **antisymétrique**, on n'a jamais d'arc de la forme $x \leftrightarrow y$
- Si $R$ est **transitive**, à chaque fois qu'on a $x \rightarrow  y \rightarrow z$ on a aussi $x \rightarrow  z$
  - _En général on ne représente **que** les arcs de la forme prédécesseur $\rightarrow$ successeur, càd $x \rightarrow y$ tel qu'il n'existe aucun $z$ tel que $x \rightarrow z \rightarrow y$_
  - _Mais par exemple $a \rightarrow b \rightarrow c \rightarrow a$ ne permet pas de supprimer des arcs (cycle)_

> *Remarque.* Dans une relation d'équivalence, on aura des groupes de sommets tous reliés entre eux (composantes connexes complètes)
> ![Graphe d'une équivalence entre 4 éléments]()

\newpage

## c) Représentation par une matrice

On choisit un ordre sur $X = x_1 < x_2 < \dots < x_n$. On a $M_{i,j} = 1$ ssi $x_i\; R\; xj$
$$
\begin{pmatrix}
x_1\; R\; x_1 & \cdots & x_1\; R\; x_n \\
\vdots        & \ddots & \vdots\\
x_n\; R\; x_1 & \cdots & x_n\; R\; x_n
\end{pmatrix}
$$

$M$ est une matrice carrée de taille $card\; X$ à coefficients dans $\{0, 1\}$.

- Si $R$ est **réflexive**, sa matrice a une diagonale de $1$.
- Si $R$ est **symétrique**, sa matrice est symétrique par rapport à la diagonale (la diagonale a des valeurs quelconques).
- Si $R$ est **antisymétrique**, sa matrice n'a jamais deux $1$ symétriques.
- Si $R$ est **transitive**, sa matrice respecte : si $M_{i,j} = 1$ et $M_{j,k} = 1$ alors $M_{i,k} = 1$/
- Une relation d'équivalence, si on choisit le bon ordre sur $X$ alors sa matrice est "diagonale par blocs"

  *Exemple.*
  - Sur $X = \{1, 2, 3, 4, 5\}$. Soit la relation "avoir même parité" en prenant $1 < 2 < 3 < 4 < 5$ :
  $$
  \begin{pmatrix}
  1 & 0 & 1 & 0 & 1 \\
  0 & 1 & 0 & 1 & 0 \\
  1 & 0 & 1 & 0 & 1 \\
  0 & 1 & 0 & 1 & 0 \\
  1 & 0 & 1 & 0 & 1 \\
  \end{pmatrix}
  $$
  - Si on prend l'ordre $1 < 3 < 5 < 2< 4$ la matrice est diagonale par blocs :
  $$
  \begin{pmatrix}
  1 & 1 & 1 & 0 & 0 \\
  1 & 1 & 1 & 0 & 0 \\
  1 & 1 & 1 & 0 & 0 \\
  0 & 0 & 0 & 1 & 1 \\
  0 & 0 & 0 & 1 & 1 \\
  \end{pmatrix}
  $$

### Un exemple

$X = {0, 1}^*$

Soit une relation $L$ telle que $u\; L\; v$ ssi $lg(u) \le lg(v)$.

Elle est clairement réflexive, non symétrique, transitive et non antisymétrique.

Elle n'est pas antisymétrique : $0 L 1$ et $1 L 0$.

\newpage

# 2) Construction des relations de préordre

**Principe :** partir d'une "petite" relation puis ajouter autant de couples que nécessaire pour en faire un préordre.

**Définition.** Soit $R$ une relation binaire sur $X$. On appelle relation de préordre engendré par $R$ la plus petite relation réflexive transitive qui contient $R$. On la note $R^*$.

**Principe de construction :** on définit la **relation itérée $k$ fois de $R$** notée $R^k$ comme :
$$
xR^ky \text{ ssi } \exists x_1,x_2,\dots,x_{k-1} \text{ tq : } xRx_1 \text{ et } x_1Rx_2 \text{ et } \dots  \text{ et } x_{k-1}Ry
$$
$$
\text{ (on passe de $x$ à $y$ en $k$ étapes de $R$) }
$$

Par convention $R^1 = R$, $R^0 = I = \{(x, x)\; |\; x \in X\}$

**Propriété.** Pour toute relation $R$ :
$$
\boxed{
R^* = R^0 \cup R^1 \cup R^2 \cup \dots \cup R^n = \bigcup\limits_{k \in \mathbb{N}}  R^k
}
$$

En pratique il suffit d'un nombre fini d'itérations si $X$ est fini.

*Exemples.*

- $X = \mathbb{N}$, $x R (x + 1) \forall x \in \mathbb{N}$ alors :

  $R^2 = \{(x, x + 2)\; |\; x \in \mathbb{N}\}$

  $R^k = \{(x, x + k)\; |\; x \in \mathbb{N}\}$

  $R^* = "\leq"$ ($x R^* y$ ssi $x \leq y$)
- $X = \mathbb{R}$, $x R y$ ssi $y - 1 \leq x \leq y + 1$

  $x R^k y$ ssi $y - k \le x \le y + k$

  $x R^* y$ pour tous réels $x$ et $y$

\newpage

## b) Construction de $R^k$ à l'aide de matrices booléenes

Sur les matrices de relations, on définit les opérations suivantes :

$+$     | **$0$** | **$1$**
--------|---------|--------
**$0$** | $0$     | $1$
**$1$** | $1$     | $1$

$\times$ | **$0$** | **$1$**
---------|---------|--------
**$0$**  | $0$     | $0$
**$1$**  | $0$     | $1$

> **Attention.** $1$ n'a pas d'opposé : on ne peut pas faire de soustraction. Les fègles de calcul sont différentes de celles du code de Hamming

Le calcul matriciel avec ces règles donne :

- $\boxed{M(R \cup R') = M(R) + M(R')}$
- $\boxed{M(R^k) = M(R)^k}$

> *Remarque.* $a_{ij} = 1$ ssi il existe au moins un $k$ tel que $m_{ik} \times m_{kj} = 1 \Leftrightarrow m_{ik} = m_{kj} = 1$
>
> Autrement dit : $x_i R x_k$ et $x_k R x_j \Leftrightarrow \exists$ un chemin de longueur $2$ entre $x_i$ et $x_j \Leftrightarrow x_i R^2 x_j$ (même princips pour $R^k$)
>
> D'où $\boxed{M(R^*) = \sum_{k = 0}^{n - 1}M(R)^k}$
>
> Dans la pratique on s'arrête dès que $M(R)^k$ ne contient pas de "nouveau" simple.

*Exemple.* $X = \{a, b, c, d, e\}$, $R = \{(a, a), (a, b), (b, c), (c, d), (d, e), (e, d)\}$

$$
R =
\begin{pmatrix}
1 & 1 & 0 & 0 & 0\\
0 & 0 & 1 & 0 & 0\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
\end{pmatrix}
R^2 = \begin{pmatrix}
1 & 1 & 1 & 0 & 0\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
\end{pmatrix}
R^4 = \begin{pmatrix}
1 & 1 & 1 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
\end{pmatrix} = R^5
$$

$$
\text{D'où } R^* = \begin{pmatrix}
1 & 1 & 1 & 1 & 1\\
0 & 1 & 1 & 1 & 1\\
0 & 0 & 1 & 1 & 1\\
0 & 0 & 0 & 1 & 1\\
0 & 0 & 0 & 1 & 1\\
\end{pmatrix} = I + M(R) + M(R)^2 + M(R)^3 + M(R)^4
$$

On peut également la calculer d'une autre manière : $R^* = (R+I)^k$

\newpage

## c) Relation d'équivalence engendrée

On peut d'une relation $R$ et on construit la plus petite relation réflexive, transitive, symétrique qui contient $R$.

**Construction :**
1. Construire la relations $R_s$ symétrique qui contient $R$
2. Puis calculer $(R_s)^*$ le préordre engendré par $R_s$

> **Attention.** Calculer $R^*$ puis la symétriser est en général **faux**.
>
> *Exemple.* Soit $R$ tel que $1 R 2$ et $1 R 3$
>
> - $R_s : R \cup 2R1,3R1$ et $(R_s)^* = R_s \cup 2R3,3R2,1R1,2R2,3R3$.
> - mais $R^* : R \cup 1R1,2R2,3R3$ et $(R^*)_s = R^* \cup 2R1,3R1$
> - On a bien $1R1,2R2,3R3,1R2,2R1,1R3,3R1$,**$2R3,3R2$** $\ne 1R1,2R2,3R3,1R2,2R1,1R3,3R1$

> *Remarque.* il n'existe en général pas "d'ordre engendré" par une relation $R$. Car, si $R$ n'est pas antisymétrique, on ne peut pas la rendre antisymétrique en la complétant

# 3) Transitivité

Pour savoir si une relation $R$ est transitive, il suffit de vérifier si $\boxed{R^2 \subseteq R}$.

$$
\begin{array}{lcl}
\text{En effet : }R^2 \subseteq R & \Leftrightarrow & \forall (x, z) \in R^2, (x, z) \in R\\
 & \Leftrightarrow & (\text{ si } xR^2z \text{ alors } xRz)\\
 & \Leftrightarrow & \forall x,z, (\exists y \text{ tq } xRy \text{ et } yRz) \Rightarrow xRz\\
 & \Leftrightarrow & R \text{ transitive }
\end{array}
$$

Concrètement, on calcule $M(R)^2$ et on vérifie si, à chaque fois qu'il y a un $1$ dans cette matrice il y en a un aussi dans celle de $R$.

*Exemple.* R n'est pas transitive car il y a des $1$ dans $M(R^2)$ qui ne sont pas dans $M(R)$ (l'inverse peut être vrai ou non, peu importe).

$$
R =
\begin{pmatrix}
1 & 1 & 0. & 0 & 0\\
0 & 0 & 1 & 0 & 0\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
\end{pmatrix}
R^2 = \begin{pmatrix}
1 & 1 & 1. & 0 & 0\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
0 & 0 & 0 & 1 & 0\\
0 & 0 & 0 & 0 & 1\\
\end{pmatrix}
$$















.

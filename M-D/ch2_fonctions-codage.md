% Chapitre 2 - Fonctions et codages
% Benjamin WACK (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 05 Novembre 2018

# 1) Fonctions

## a) Définitions et notations

Une **fonction** d'un ensemble $X$ vers un ensemble $Y$ associe à **chaque** élément $x$ de $X$ **un et un seul** élément de $Y$ noté $f(x)$.

> *Remarque.* Lorsqu'on parle de la fonction racine carrée, on choisit de prendre la racine positive, afin d'avoir une seule solution.

**Notation.** "à la UML" : $X\ \underline{0..*\ \ f>\ \ \ 1}\ Y$
"À tout élément de $X$ correspond un élément de $Y$"
"À tout élément de $Y$ peut correspondre 0, 1 ou plusieurs éléments de $X$"

**Vocabulaire.**
- En maths, on appelle ça une fonction totale.
- Une fonction $f : X \rightarrow \{0, 1\}$ est appelée un **prédicat**.

**Notions d'image. (important !)**
Soient $x \in X$ et $y \in Y$.
On appelle :
- **l'image de $x$ par $f$** l'élément $f(x)$
- **l'image de $f$** est $\{f(x)\ |\ x \in X\}$ (partie de $Y$)
- **l'image réciproque de $y$ par $f$** notée $f^{-1}(y) = \{x \in X\ |\ f(x) = y\}$

*Exemples.*
- $X = \mathbb{Z}$, $Y = \{0, 1, 2, 3, 4\}$, $f(x) =$ reste de la division de $x$ par $5$
  - $f(12) = 2$
  - $f(X) = Y$
  - $f^{-1}(0) = \{\dots, -10, -5, 0, 5, 10, \dots\}$ : les multiples de 5

- $X = \{a, b\}^*$, $Y = \mathbb{Z}$, $f = lg$
  - $f(X) = \mathbb{N}$
  - $f^{-1}(3) = \{aaa, aab, aba, abb, baa, bab, bba, bbb\}$ (antécédents de 3)
  - $y \in Y$ n'a pas d'antécédent ssi $f^{-1}(y) = \emptyset$ ssi $y \notin Im(f)$

## b) Notion de bijection

Une **bijection** de $X$ dans $Y$ est une fonction telle que **chaque** élément de $Y$ a **exactement un** antécédent.

**Notation "à la UML"** $X\ \underline{1\ \ \ \ f>\ \ \ 1}\ Y$

Autrement dit :
- pour tout $y \in Y$, il existe un unique $x \in X \text{ tq } f(x) = y$
- pour tout $y \in Y$, $f^{-1}(y)$ est un singleton (l'ensemble des antécédents)
- il existe une fonction $g : Y \rightarrow X$
  telle que $\begin{cases}
  \forall y \in Y, f(g(y)) = y \text{ (existence) }\\
  \text{et}\\
  \forall x \in X, g(f(x)) = x \text{ (unicité) }\end{cases}$

  $g$ est alors appelée **la fonction réciproque de f** et dans ce cas on peut la noter $f^{-1}$

  $g$ est alors une bijection aussi dont la réciproque est $f$

### Méthode pour démontrer qu'une fonction $f$ est bijective

- Proposer une fonction $g : Y \rightarrow X$
- Démontrer que pour tout $y \in Y$ et $x \in X$, $\boxed{g(y) = x \Leftrightarrow y = f(x)}$

> *Remarque.* En pratique, on part de $y = f(x)$ et on procède par équivalences successives pour exprimer $x$ en fonction de $y$

### À propos des cardinaux

Si il existe une bijection de $X$ vers $Y$ (noté $X \cong Y$) alors $\boxed{card\ X = card\ Y}$.

Contraposée : si $X$ et $Y$ n'ont pas le même cardinal, il ne **peut pas** y avoir de bijection entre eux.

On peut également compter les bijections : si $card\ X = card\ Y = n$ alors il y a $\boxed{n! \text{ bijections}}$ de $X$ vers $Y$

*Exemples.*
- Soient $X = \{a, b, c\}$ et $Y = \{1,2,3\}$
  alors il y a des bijections $X \rightarrow Y$

  par exemple $f : \left\{\begin{array}{ll}
  a & \mapsto & 1\\
  b & \mapsto & 5\\
  c & \mapsto & 2\\
  \end{array}\right.$ est une bijection

- $\sin : [-{\pi \over 2}, {\pi \over 2}] \rightarrow [-1, 1]$ est une bijection

- $\lg : A^* \rightarrow \mathbb{N}$ n'est pas une bijection (sauf si $A$ ne contient qu'un seul symbole)

## c) Injectivité, Surjectivité

**Définition.** Une **injection** de $X$ vers $Y$ est une fonction $f$ telle que chaque élément de $X$ ait **au maximum un** antécédent.

$$
\forall y \in Y,\ card(f^{-1}(y)) = 0 \text{ ou } 1
$$

$$\text{ Diagramme UML : }X\ \underline{0..1\ \ \ \ f>\ \ \ 1}\ Y$$

**Deux caractérisation équivalentes :**
- $\forall x_1, x_2 \in X$, si $f(x_1) = f(x_2)$ alors $x_1 = x_2$
- $\forall x_1, x_2$, si $x_1 \neq x_2$ alors $f(x_1) \neq f(x_2)$

**Propriété.** Si il existe une injection de $X$ dans $Y$, alors $card\ X \le card\ Y$

**Contraposée.** Principe des pigeons (ou des tiroirs) : si $card\ X > card\ Y$ alors il existe deux éléments $x_1$ et $x_2 \in X$ tels que $x_1 \neq x_2$ et $f(x_1) = f(x_2)$

> *Remarque.* Ne marche qu'avec des ensembles **finis** !

**Application à l'informatique.** Si $f$ est un **code**, on souhaite pouvoir décoder de façon unique, autrement dit on veut que $f$ soit injective.

Si $f(x_1) = f(x_2)$ avec $x_1 \neq x_2$, on parle de **collision** (voir tables de hashage)

**Définition.** Une **surjection** (peu utilisé en informatique) est une fonction $X \rightarrow Y$ telle que **chaque élément** de $Y$ ait **au moins** un antécédent.

$$\text{ Diagramme UML : }X\ \underline{1..*\ \ \ f>\ \ \ 1}\ Y$$

Autrement dit $Im(f) = Y$

**Propriété.** Si **il existe une surjection** de $X$ vers $Y$, alors $\boxed{card\ X \geq card\ Y}$




.

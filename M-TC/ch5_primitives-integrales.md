% Chapitre 5 - Primitives et intégrales
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 12 Octbre 2018

# A) Primitives

**Définition.** Soit $g:[a, b] \rightarrow \mathbb{R}$ (continue).
Une **primitive** de *g* est une fonction $G:[a, b] \rightarrow \mathbb{R}$ dérivable tq $G' = g$

*Exemple.* Soit $g(x) = x^2$, les fonctions $G_1 : \begin{array}{cc}\mathbb{R} \rightarrow \mathbb{R} \\ x \mapsto {x^3 \over 3}\end{array}$ et $G_2 : \begin{array}{cc}\mathbb{R} \rightarrow \mathbb{R} \\ x \mapsto {x^3 \over 3} + 12\end{array}$ sont des primitives de $g$.

> Il n'y a pas unicité de la primitive

**Proposition.** Si $G_1$ et $G_2$ sont deux primitive de $g$ , alors $G_1 - G_2 =$ cste.
De plus, toute les primitives de $g$ sont de la forme $G_1 + c$ où $c$ est une constante

**Notation.** On note $\int^a_bg(x)\ dx$ l'ensemble des primitves de g.

*Exemple.*
$$
\int x^2\ dx = {x^3 \over 3} + Cste \\
(=\{x \mapsto  {x^3 \over 3} + C | C \in \mathbb{R}\})$$

**Primitives usuelles**

Soit $b\in \mathbb{R},\ n \in \mathbb{Z}\backslash\{-1\},\ \alpha \in \mathbb{R}\backslash\{-1\}$

$f(x)$      | $\int f(x)\ dx$
------------|-------------------------------------------
$b$         | $bx + Cste$
$ax$        | $a {x^2 \over 2} + Cste$
$x^n$       | ${x^{n + 1} \over n + 1} + Cste$
$1 \over x$ | $ln|x| + Cste$
$\cos(x)$   | $\sin(x) + Cste$
$\sin(x)$   | $-\cos(x) + Cste$
$e^x$       | $e^x + Cste$
$\ln(x)$    | $x\ln(x) - x + Cste$
$x^\alpha$  | ${x^{\alpha + 1} \over \alpha + 1} + Cste$

\pagebreak

# B) Intégrales

## 1) Formule de somme

- $\int(g_1(x) + g_2(x))\ dx = \int g_1(x)\ dx + \int f_2(x)\ dx$

*Exemple.* $\int (2x^2 + 1)\ dx = {2x^3 \over 3} + x + Cste$

- $\int\lambda g(x)\ dx = \lambda \int g(x)\ dx$

> Remarque. On a pas de formule pour le produit (*IPP*)ni pour le quotient...
> On a pas on plus de formule pour la composée (*changement de variable*)

## 2) Calcul intégral

$g:[a, b] \rightarrow \mathbb{R}$ (continue)
$\int_a^b g(t)dt =$ aire algébrique (avec signe) entre le graphe de $g$ et l'axe des abscisses entre $a$ et $b$

![Schéma de la correspondance entre intégrale et aire algébrique]()
$\int^b_a g(t)dt = A_1 - A_2 + A_3$

> Remarque. Lorsqu'il y a des bornes, $\int_a^b g(t) dt \in \mathbb{R}$

*Exemple.* $\int^1_0 x\ dx$
![Schéma de int^1_0 x\ dx]()

$\int_0^1 x\ dx = {1 \over 2}$

![Schéma de int^1_-1 x\ dx]()
$\int^1_{-1}x\ dx = A_2 - A_1$

# C) Lien primitives et intégrales

**Théorème.** (Théorème fondamental de l'analyse)
Soit $g:[a, b] \rightarrow \mathbb{R}$ continue et soir $G$ une primitive de $g$.
Alors $\int^b_a g(t)dt = [G(t)]^{t = b}_{t = a} = G(b) - G(a)$ $\blacksquare$

*Exemple.*
$\int^1_0 x^2\ dx = [{x^3 \over 3}]^{x = 1}_{x = 0} = {1 \over 3}$
![Schéma correspondant]()

$\int^{\pi/2}_0 \cos(x)\ dx = [\sin(x)]^{x = \pi/2}_{x = 0} = \sin(\pi/2) = 1$
![Schéma correspondant]()

**Corollaire** Soit $g:[a, b] \rightarrow \mathbb{R}$ continue.
Alors $\forall c \in [a, b]$,
$$G_c : \begin{array}{cc}[a,b] \rightarrow \mathbb{R} \\ x \mapsto \int_c^x g(t)\ dt\end{array}$$
est une primitive de $g$.

\pagebreak

# D) Méthodes de calcul d'une intégrale

## 1) Chasles

$a, b, c \in \mathbb{R}$

$$
\int^b_a g(t)\ dt = \int^c_a g(t)\ dt + \int^b_c g(t)\ dt
$$

## 2) Utiliser les symétries

  - Si $f$ pair $\forall a > 0$

    $$
    \int^a_0 f(x)\ dx = \int^0_{-a} f(x)\ dx
    $$
    ![Schéma d'une fonction paire]()

    Donc

    $$
    \int^a_{-a} f(x)\ dx = 2\int^a_0 f(x)\ dx
    $$

  - Si $f$ impaire, $\forall a > 0$
    $$
    \int^a_0 f(x)dx = -\int^0_{-a} f(x)\ dx
    $$
    ![Schéma d'une fonction impaire]()

    Donc $\int_{-a}^a f(x)\ dx = 0$

    *Exemple* $\int_{-\pi/2}^{\pi/2}\sin(x)\ dx = 0$

  - On peut utiliser d'autres "symétries" comme la périodicité (exemple avec $\cos$ et $\sin$)

\pagebreak

## 3) Changement de variable

$f : [a,b] \rightarrow \mathbb{R}$ continue

> Rappel des fonctions bijectives. $f : x \rightarrow y$ bijective si $\forall y \in Y,\ \exists! x \in X$ tq $f(x) = y$
$f : [c,d] \rightarrow [a,b]$ dérivable et bijective
(En pratique on vérifie que $u([c, d]) = [a, b]$ et que $u$ est strictement monotone)

$$\boxed{\int_c^d f(u(t))\ u'(t)\ dt = \int_{u(c)}^{u(d)} f(x)\ dx}$$

$$"u' = {du \over dt} \Rightarrow u'\ dt = du"$$

*Exemple.* $\int^{1 \over 4}_0 xe^{x^2}\ dx$
$$
u:\begin{array}{cc}[0, {1 \over 2}] \rightarrow [0, {1 \over 4}] \\ x \mapsto x^2 \end{array}
$$
bijectif et $C^1$

$u'(x) = 2x\ "du = 2xdx"$
Donc
$$
I + {1 \over to} \int^{1 \over 2}_0 e^{x^2}2x\ dx = {1 \over 2} \int^{u({1 \over 2})_{u(0)} e^u\ du} \\
= {1 \over 2} \int^{1 _over 4}_0 e^u\ du \\
= {1 \over 2} [e^u]^{1 \over 4}_0 = {1 \over 2}(e^{1 \over 4} - 1)
$$


*Exemple.*
Soit $\int_0^{1/4} {\ln(1-\sqrt{x}) \over \sqrt{x}}\ dx$, choisissons $u : \begin{array}{cc}[0, {1 \over 4}] \rightarrow [{1 \over 2}, 1] \\ x \mapsto 1-\sqrt{x} \end{array}$

![Schéma de u]()

$u$ est strictement décroissante, $u([0, {1 \over 4}]) = [{1 \over 2}, 1]$ et $u'(x) = {-1 \over 2\sqrt{x}}$

Donc
$$
J = -2 \int^{1 \over 4}_0 \ln(1 - \sqrt{x})({-dx \over 2 \sqrt{x}})
$$
$$
= -2 \int^{u(1)}_{u(0)} ln(u)\ du = -2 \int^{1 \over 2}_1 ln(u)\ du \\
= 2 \int_{1/2}^1 \ln{u}\ du \\
$$
$$
= 2[u\ln(u) - u]_{1/2}^1 = 2\Big(-1 - \big({1 \over 2}\ln({1 \over 2}) - {1 \over 2}\big)\Big) \\
= \boxed{ln(2) - 1}
$$

\pagebreak

## 4) Intégration par parties (IPP)

*Rappel.*
$$
(uv)' = u'v + uv' \\
\int (uv)' = \int u'v + \int uv'$$

Donc
$$
[u(x)v(x)]^b_a = \int^b_a u'(x)v(x)\ dx + \int^b_a u(x)v'(x)\ dx
$$
Donc $\boxed{\int_a^b u'(x)v(x)\ dx = \Big[u(x)v(x)\Big]_a^b - \int_a^b u(x)v'(x)\ dx}$

*Exemple.*

$$
\int^1_0 xe^x\ dx = [xe^x]^1_0 - \int^1_0 u(x)v'(x)\ dx
$$

Prenons $u(x) = e^x$, $u'(x) = e^x$, $v(x) = x$ et $v'(x) = 1$

Donc $I = e - \int_a^1 e^x\ dx = e - \big[e^x\big]_0^1 = e - (e-1) = \boxed{1}$

*Exemple.*

$$
J = \int_0^{\pi/2} (x^2 + 1)\cos(x)\ dx
$$

Prenons $u(x) = \sin(x)$, $u'(x) = \cos(x)$, $v(x) = x^2+1$ et $v'(x) = 2x$

Donc $J = \Big[(x^2+1)\sin(x)\Big]_0^{\pi/2} - \int_0^{\pi/2} 2x\sin(x)\ dx = {\pi^2 \over 1} + 1 - 2\int_0^{\pi/2} x\sin(x)\ dx = \boxed{1}$

Prenons $u(x) = -\cos(x)$, $u'(x) = \sin(x)$, $v(x) = x$ et $v'(x) = 1$

Donc $\int^{\pi \over 2}_0 xsin(x)\ dx = \Big[-x cos(x)\Big]^{\pi \over 2}_0 + \int^{\pi \over 2}_0 \cos(x)\ dx = \Big[\sin(x)\Big]^{\pi \over 2}_0 = 1$

Donc $\boxed{J = {\pi^2 \over 4} - 1}$

## 5) Décomposition en éléments simples

- **But.** intégrer des fonctions de la forme $P(x) \over Q(x)$ avec $P$ et $Q$ deux polynômes (on appelle ça des fonctions rationnelle en $x$)
- **Étape 1.**
    - si le degré $P <$ le degré de $Q$, alors on ne fait rien
    - si le degré $P \ge$ le degré de $Q$, on va se ramener à une fraction rationnelle ${\widetilde{P} \over \widetilde{Q}}$ avec la décomposition $P <$ le degré de $Q$
      Pour cela, on fait la division euclidienne de $P$ par $Q$.
      C'est-à-dire $P = LQ + R$ avec $L$ et $R$ deux polynômes tq degré $R <$ degré $Q$
      Ansi ${P \over Q} = L + {R \over Q}$ ($L(X)$ est facile à intégrer et $d°R < d°Q$)

      En pratique, comment trouve-t-on $L$ et $R$ ?

    *Exemple.* $P = X^5 + X^4 - X^2 + 1 \\ Q = X^2 - 1$

    ![Division euclidienne de P par Q]()

    Donc $P(x) = \underset{L(X)}{(X^3 + X^2 + X)}\underset{Q(X)}{(X^2 - 1)}+\underset{R(X)}{X+1}$

    Donc $P(x) = \underset{Q(X)}{(X^3 - 1)}\underset{L(X)}{(X^2 - 2X + 1)}+\underset{R(X)}{X^2 + 2X + 1}$

- **Étape 2.** Développer ${R \over Q}$ en élément simple
    - Factoriser $Q$ (avec $\alpha_i$ racines de $Q$ dans $\mathbb{R}$)
      $$
      Q(x) = a(X - \alpha_1)^{\stackrel{\text{multiplicité de }\alpha_1}{n_1} } \dots (X - \alpha_r)^{n_r} (X^2 + a_1X + b_1)^{n_1} \dots (X^2 + a_lX + b_l)^{n_l}
      $$

      *Exemple.*

      $$
      \begin{array}{rl}
      Q(x)& = & X^3 - X \\
      & = & X(X^2 - 1) \\
      & = & \underset{\text{toutes de multiplicité 1}}{X(X - 1)(X + 1)} \\
      \end{array}
      $$

      $$
      \begin{array}{rl}
      Q(x) & = & 2X^5 - 2X^2\\
      & = & 2(X^5 - X^2) \\
      & = & 2X^2(X - 1)(X^2 + X + 1)
      \end{array}
      $$

    - Décomper $P \over Q$
      Chaque $(X - \alpha_i)^{n_i}$ va donner $m_i$ elements simples de $1^{\text{ère}}$ espèce :
      $$
      {\lambda_1 \over (X - \alpha_i)} + {\lambda_2 \over (X - \alpha_i)^2} + \dots + {\lambda_{n_i} \over (X - \alpha_i)^{n_i}}
      $$
      et chaque $(X^2 - aB + b)^n$ fait apparaître $n$ éléments simples de $2^{\text{de}}$ espèce
      $$
      {u_1X + v_1 \over (X^2 + ax + b)} + {u_2X + v_2 \over (X^2 + ax + b)^2} + \dots + {u_nX + v_n \over (X^2 + ax + b)^n}
      $$

      *Exemple.*
      $$Q(X) = X^3 - X = X(X-1)(X+1)$$
      $${X^2+2X-1 \over X^3-X} = {X^2+2X-1 \over X(X-1)(X+1)} = {\lambda_1 \over X} + {\lambda_2 \over X-1} + {\lambda_3 \over X+1} $$

      *Exemple.*
      $$
      \begin{array}{rl}
      {X^3 + 1 \over 2X^2(X - 1)(X^2 + X + 1)}  & = & {1 \over 2}({\lambda_1 \over X} + {\lambda_2 \over X^2} + {\lambda_3 \over X - 1} + {aX + b \over X^2 + X + 1}) \\
      \end{array}
      $$

      **Comment trouver tous les coefficients ($\lambda_i$ , $aX+b$, etc.) ?**

      Il existe plusieurs méthodes :

      - factoriser et identifier :

        *Exemple.*
        $$
        \begin{array}{rl}
        {X^2 + 2X - 1 \over X(X - 1)(X + 1)} & = & {\lambda_1 \over X} + {\lambda_2 \over X - 1} + {\lambda_3 \over X + 1} \\
        & = & {\lambda_1(X-1)(X+1) + \lambda_2X(X+1) + \lambda_3X(X-1) \over X(X-1)(X+1)} \\
        & = & {(\lambda_1 + \lambda_2 + \lambda_3)X^2 + (\lambda_2 - \lambda_3)X - \lambda_1 \over X(X - 1)(X + 1)}
        \end{array}
        $$
        $$
        \text{donc}
        $$
        $$
        \left\{\begin{array}{rl}
        \lambda_1 + \lambda_2 + \lambda_3 & = & 1\\
        \lambda_2 - \lambda_3 & = & 2\\
        \lambda_1 & = & 1
        \end{array}\right.
        \Leftrightarrow
        \left\{\begin{array}{rl}
        \lambda_2 & = & -\lambda_3\\
        \lambda_2 & = & 1\\
        \lambda_1 & = & 1
        \end{array}\right.
        $$
        $$
        \text{et}
        $$
        $$
        {X^2+2X-1 \over X(X+1)(X-1)} = {1 \over X} + {1 \over X-1} - {1 \over X+1}
        $$


      - multiplier et évaluer :

        *Exemple.*
        $$
        \begin{array}{rl}
        {X^2 + 2X - 1 \over X(X - 1)(X + 1)} & = & {\lambda_1 \over X} + {\lambda_2 \over X - 1} + {\lambda_3 \over X + 1} \\
        \end{array}
        $$
        - **Pour $\lambda_1$** :
          On multiplie par $X$
          $$
          {X^2 + 2X - 1 \over (X - 1)(X + 1)} = \lambda_1 + X({\lambda_2 \over X - 1} + {\lambda_3 \over X + 1})
          $$
          Puis on évalue en $0$ :
          $$
          {-1 \over (-1)(1)} = \lambda_1 \Rightarrow \boxed{\lambda_1 = 1}
          $$

        - **Pour $\lambda_2$** :
          On multiplie par $X-1$
          $$
          {X^2 + 2X - 1 \over X(X + 1)} = \lambda_2 + (X-1)(\cdots)
          $$
          Puis on évalue en $1$ :
          $$
          {2 \over 2} = \lambda_2 \Rightarrow \boxed{\lambda_2 = 1}
          $$

        - **Pour $\lambda_3$** :
          On multiplie par $X+1$
          $$
          {X^2 + 2X - 1 \over X(X - 1)} = \lambda_3 + (X-1)(\cdots)
          $$
          Puis on évalue en $-1$ :
          $$
          {-1 \over (-1)(1)} = \lambda_1 \Rightarrow \boxed{\lambda_3 = - 1}
          $$

        *Exemple.*
        $$
        {X^2+X+1 \over X^2(X^2+1)} = {\lambda_1 \over X} + {\lambda_2 \over X^2} + {aX+b \over X^2+1}
        $$
        - **On commence par $\lambda_2$** en multipliant pat $X^2$
          $$
          {X^2+X+1 \over (X^2+1)} = \lambda_2 + X^2 \Big({\lambda_1 \over X} + {aX+b \over X^2+1} \Big)
          $$
          Et en $0$ : $\boxed{1 = \lambda_2}$
        - **Pour trouver le $\lambda_1$, on passe le ${\lambda_2 \over X^2}$ de l'autre côté** :
          $$
          \begin{array}{lr}
          {X^2 + X + 1 \over X^2(X^2 + 1)} - {1 \over X^2} & = & {\lambda_1 \over X} + {aX + b \over X^2 + 1} \\
          & = & {X \over X^2(X^2 + 1)} \\
          & = & {1 \over X(X^2 + 1)}
          \end{array}
          $$
          Donc on a ${1 \over X(X^2+1)} = {\lambda_1 \over X} + {aX+b \over X^2-1}$ et $\boxed{\lambda_1 = 1}$
        - **Pour $a$ et $b$** on multiplie par $X^2+1$ :
          $$
          {1 \over X} = aX+b + {X^2+1 \over X}
          $$
          $i$ est une racine de $X^2 + 1$, on évalue donc en $i$
          $$
          {1 \over i} = ai+b \Rightarrow -i = ai+b \Rightarrow
          \begin{cases}
          a = 1\\
          b = 0\\
          \end{cases}
          $$
          Ainsi, ${X^2+X+1 \over X^2(X^2+1)} = {1 \over X} + {1 \over X^2} - {X \over X^2+1}$

          > *Remarque.* Pour trouver les coefficients dans la décomposition en éléments simples, tous les coups sont permis !

- Il ne reste donc plus qu'à intégrer les éléments simples :
  $$
  \int {dx \over X - \alpha_i}  = ln|X - \alpha_i| + Cte \\
  \int {dx \over X - \alpha^n}  = ln|X - \alpha_i| + Cte
  $$

  Pour les éléments de seconde espèce, on a besoin de l'$\arctan$ :

    - fonction réciproque de $\tan$
    - fonction impaire
    - $\tan(\arctan\underset{x \in \mathbb{R}}{(x)}) = x$
    - $\arctan(x) + \arctan({1 \over x}) =
    \begin{cases}
    {\pi \over 2} \text{ si } x > 0\\
    -{\pi \over 2} \text{ si } x < 0\\
    \end{cases}
    $
    - $\arctan'(x) = {1 \over 1+X^2}$

  Si on a un élément de seconde espèce :

  $$
  {\alpha X + \beta \over X^2+aX+b} = {\alpha X + \beta \over \big(X+{a \over 2}\big)^2 + b - {a^2 \over 4}} = {\alpha X + \beta \over A \bigg(\big({x+a/2 \over \sqrt{A}}\big)\bigg) +1}
  $$

  Changement de variable : $y = {x+a/2 \over sqrt(A)}$

  *Exemple.*
  $$
  \begin{array}{lr}
  {X + 1 \over X^2 + 2X + 5} & = & {X + 1 \over (X + 1)^2 - 1 + 5} \\
  & = & {X + 1 \over (X + 1)^2 + 4} \\
  & = & {1 \over 4} {X + 1 \over ({X + 1 \over 2})^2 + 1}
  \end{array}
  $$

  Donc

  $$
  \begin{array}{ll}
  \int_{0}^{1} {X + 1 \over X^2 + 2X - 5}\ dx & = &{1 \over 4}\int_{0}^{1} {X + 1 \over ({X + 1 \over })^2 + 1}\ dx\\
  & = & {1 \over 4} \int_{y(0)}^{y(1)} {2y \over y^2 + 1}\ dy\\
  & = & {1 \over 2} \int_{1 \over 2}^{3 \over 2} {2y \over (y^2 + 1)}\ dy\\
  & = & \Big[{1 \over 2} \ln|y^2+1|\Big]^{3/2}_{1/2}\\
  & = & {1 \over 2} \ln(13/4) - \ln(5/4)\\
  & = & {1 \over 2} \big(\ln(13)\big) - \ln(2) + 2\ln(2) - ln(5)\\
  & = & \boxed{\ln(2) - \ln(5) + - \ln({13 \over 2})}
  \end{array}
  $$

  **En général**
  $$
  \begin{array}{ll}
  \int {ay + b \over y^2 + 1}dy & = & {a \over 2}\int {2y \over y^2 + 1}dy + b\int {dy \over y^2 + 1} \\
  & = & {a \over 2}\ln|y^2 + 1| + b \arctan(y) + Cte
  \end{array}
  $$

  > Remarque : $\boxed{\int {dx \over X^2 + a} = {1 \over a} \arctan\Big({X \over a}\Big) + Cte},\ (a > 0)$

  *Exemple.* $\int_{0}^{1/2} {2X^5+X+1 \over X^3-1}\ dx$

  1. Division euclidienne : $\underset{Q(X)}{(X^3-1)}\underset{L(X)}{(2X^2)}  + \underset{R(X)}{(2X^2+X+1)} = \underset{P(X)}{2X^5+X+1}$

      Donc $f(x) = 2X^2 + {2X^2+X+1 \over X^3-1} = 2X^2 + \stackrel{\sim}{f}(X)$

  2. $X^3 - 1 = (X-1)(X^2+X+1)$

      Donc $\stackrel{\sim}{f}(X) = {\lambda_1 \over (X-1)} + {aX+b \over X^2+X+1}$
      Et $\boxed{{2X^2+X+1 \over (X-1)(X^2+X+1)} = {\lambda_1 \over X-1} + {aX+b \over X^2+X+1}} \ (\star)$

      - **Pour $\lambda_1$** :

        On multiplie par $X-1$ l'égalité $(\star)$ : ${2X^2+X+1 \over X^2+X+1} = \lambda_1 + (X-1)(\cdots)$

        En évaluant en $1$ : $\boxed{{a \over 3} = \lambda_1}$

      - **Pour $a$ et $b$** :

        En évaluant en $X = 0$ : ${1 \over (-1)(1)} = -\lambda_1 + {b \over 1} \Rightarrow -1+\lambda_1=b \Rightarrow \boxed{b={1 \over 3}}$

      - On multiplie par $X$ et on fait l'équivalent en $+\infty$ :

        $$
        {2X^3+X^2+X \over X^3-1} = {\lambda_1X \over X-1} + {aX^2+b \over X^2+X+1}
        $$

        En $+\infty$ on a : $2=\lambda_1+a \Rightarrow a = 2 - \lambda_1 = {2 \over 3}$ et $\boxed{a = {2 \over 3}}$

        Donc $f(X) = 2X^2 + {4 \over 3} {1 \over X-1} + {1 \over 3} {2X+1 \over X^2+X+1}$

        Et

        $$
        \begin{array}{ll}
        \int_{0}^{1/2} 2X^2\ dx & = & \Big[{2X^3 \over 3}\Big]^{1/2}_0\\
        & = & {1 \over 12} \\
        \end{array}
        $$
        $$
        \begin{array}{ll}
        \int_{0}^{1/2} {4 \over 3} {dx \over X-1} & = & {4 \over 3} \Big[\ln|X-1|\Big]^{1/2}_0\\
        & = & {4 \over 3} \ln(1-1/2)\\
        & = & -{4 \over 3} \ln(2)
        \end{array}
        $$
        $$
        \begin{array}{ll}
        \int_{0}^{1/2} {(2X+1)dx \over X^2+X+1} & = & \int_{0}^{1/2} {(2X+1)dx \over (X+1/2)^2 + 3/4}\\
        & = & \int_{y(0)}^{y(1/2)} {2y\ dy \over y^2+3/4}\\
        & = & \int_{1/2}^{1} {2y\ dy \over y^2 + 3/4}\\
        & = & \Big[\ln(y^2+3/4)\Big]^1_{1/2}
        \end{array}
        $$

        (Avec $x = y -1/2 \Rightarrow y = x+ 1/2 \text{ et } dy = dx$)

        Ainsi,
        $$
        \begin{array}{lr}
        \int_{0}^{1 \over 2} f(x)dx & = & {1 \over 12} - {4 \over 3}ln(2) + {1 \over 3}(ln(7) - 2ln(2)) \\
        & = & \boxed{{1 \over 12} + {1 \over 3}ln(7) - 2ln(2)}
        \end{array}
        $$

## 6 ) Integrales generalisées

**Définition** $f : \left\{\begin{array}{rl} [a ,b[ & \rightarrow & \mathbb{R}\end{array}\right.$ continue (par morceaux) où $b \int \mathbb{R} \cup \{+ \infty\}$
On dit que l'intégrale $\\int_{a}^{b} f(t) dt$ **converge** si $\\int_{a}^{x} f(t) dt$ converge quand $x \rightarrow b^{-}$.
On a la même des à gauche pour $F : ]a, b] \rightarrow \mathbb{R}$ avec $a \in \mathbb{R} \cup \{-\infty\}$

*Exemple.* Soit $f : \left\{\begin{array}{rl} [1,+\infty[ & \rightarrow & \mathbb{R}\\X & \mapsto & 1/X^2\end{array}\right.$, est-ce que $\int_{1}^{+\infty} {dX \over X^2}$ converge ?

  Soit $X > 1$,

  $$
  \begin{array}{ll}
  \int_{1}^{X} {dt \over t^2} & = & \big[-{1 \over t}\big]^X_1\\
  & = & -{1 \over X} + 1 \xrightarrow[X \to +\infty]{} 1\\
  \end{array}
  $$

  Donc $\int_{1}^{+\infty} {dX \over X^2}$ converge et $\int_{1}^{+\infty} {dX \over X^2} = 1$

*Exemple.* $\int_{x}^{+\infty} {dt \over t}$ converge ?

  Soit $X > 1$,

  $$
  \begin{array}{ll}
  \int_{1}^{X} {dt \over t} & = & \big[\ln(t)\big]^X_1\\
  & = & \ln(X) \xrightarrow[X \to +\infty]{} +\infty\\
  \end{array}
  $$

  Donc $\int_{x}^{+\infty} {dt \over t}$ ne converge pas.

*Exemple.* $\int_{0}^{1} {dt \over t^2}$ cv ?
Soit $x \in ]0, 1[$
$$
\begin{array}{lr}
\int_{x}^{1} {dt \over t^2} =
$$

*Exemple.* $\int_{0}^{1} {dt \over \sqrt{t}}$ cv ?
Soit $x \in ]0, 1[$






.

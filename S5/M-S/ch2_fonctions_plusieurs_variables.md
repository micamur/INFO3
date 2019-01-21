% Chapitre 2 - Fonctions de plusieurs variables
% Rémi MOLINIER (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 21 Décembre 2018

# 0. Topologie de $\mathbb{R}^n$

$$
f : \mathcal{U} \mapsto \mathbb{R}^n \text{ où } \mathcal{U} \subset \mathbb{R}^n
$$

$$
f(x_1, \dots, x_n) = (f_1(x_1, \dots, x_n), f_2(x_1, \dots, x_n), \dots, f_n(x_1, \dots, x_n))
$$

## Produit scalaire

$u = (x_1, \dots, x_n)$ et $v = (y_1, \dots, y_n)$

$$
u.v = x_1y_1 + x_2y_2 + \dots + x_ny_n
$$

Et géometriquement :

$$
u.v = ||u|| ||v|| cos(\alpha)
$$

## Norme

$$
||u|| = \sqrt{u \cdot u} = \sqrt{x_1^2+x_2^2+\dots+x_n^2}
$$

## Distance

$$
d(u,v) = ||v_u||
$$

## Boules

Soit $u \in \mathbb{R}^n, r\ge 0$

$$
\mathcal{B}(u,r) = \{v \in \mathbb{R}^n | d(u,v) < r\}
$$
$$
\begin{array}{lcl}
\mathcal{\overline{B}}(u,r) & = & \{v \in \mathbb{R}^n | d(u,v) \le r\}\\
& = & \stackrel{\circ}{\mathcal{B}} \cup \underset{\text{sphère de centre }u\text{ et rayon }v}{\{v \in \mathbb{R} | d(u,v) = r\}}\\
\end{array}
$$

## Ouverts

$\mathcal{U} \subset \mathbb{R}^n$ est un **ouvert** de $\mathbb{R}^n$ si $\forall u \in \mathcal{U}, \exists r > 0 \text{ tq } \stackrel{\circ}{\mathcal{B}}(u, r) \subset \mathcal{U}$

*Exemple.* Une boule ouverte $\stackrel{\circ}{\mathcal{B}}$ est ouverte (c'est une boule à laquelle on a "enlevé sa sphère").

*Exemple.* Une boule fermée n'est pas ouverte

*Exemple.*$\mathbb{R}^n$ est ouvert

# I. Fonctions scalaires

Soient $\mathcal{U}$ ouvert de $\mathbb{R}^n$ et $f : \mathcal{U} \mapsto \mathbb{R}^1$.

*Exemple.* $f : \left\{\begin{array}{rcl} \{\underset{\subset \mathbb{R}^2}{\text{plan des alpes}}\} & \rightarrow & \mathbb{R}\\(x,y) & \mapsto & \text{altitude du point }(x,y)\end{array}\right.$

*Exemple.* Potentiomètre : $\mathcal{U} = ]R_-,R_+[\times]I_-,I_+[$ et $U_p : \left\{\begin{array}{rcl} \mathcal{U} & \rightarrow & \mathbb{R}\\(R,I) & \mapsto & RI\end{array}\right.$

*Exemple.* $f : \left\{\begin{array}{rcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x,y) & \mapsto & x^2+y^2\end{array}\right.$ (on la représente avec les deux axes de $\mathbb{R}^2$ et un axe supplémentaire pour $\mathbb{R}$, ici elle ressemble à une parabole qui pivote autour de son axe de symétrie)

## 1. Limites et continuité

Soient $f : \underset{\subset \mathbb{R}^n}{\mathcal{U}} \rightarrow \mathbb{R}$ et $u_0 \in \mathcal{U}$.

**Définition.** On dit que **$f$ tend vers $l$** lorsque $u$ tend vers $u_0$ si :

$$
\forall \varepsilon > 0, \forall \delta > 0 \text{ tq } \forall u \in \mathcal{U}, ||u-u_0|| < \delta \Rightarrow |f(u)-l| < \varepsilon
$$

*Notation.* $\lim\limits_{u \to u_0} f(u) = l$ $f(u) \xrightarrow[u \to u_0]{} l$

> **Attention.** La convergence directionnelle ne suffit pas !

*Exemple.* Soit $f : \left\{\begin{array}{lcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & {xy \over x^2 + y^2}\end{array}\right.$ alors on a :

$$
f(0, y) = 0 \xrightarrow[y \to 0]{} 0
$$
$$
f(x, 0) = 0 \xrightarrow[x \to 0]{} 0
$$
$$
f(t, t) = {t^2 \over 2t^2} = {1 \over 2} \xrightarrow[t \to 0]{} {1 \over 2}
$$

Ici $f$ n'a pas de limite en $0$

*Exemple.*

$$
f : \left\{\begin{array}{lcl} \mathbb{R}^2 \backslash \{(0, 0)\} & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & {x^2y \over x^4 + y^2}\end{array}\right.
$$

On a, dans la direction des $x$ et des $y$ :

$$
f(0, y) = 0 \xrightarrow[y \to 0]{} 0
$$
$$
f(x, 0) = 0 \xrightarrow[x \to 0]{} 0
$$
$$
f(t\overrightarrow{u}) = f(ta, tb) = {t^3a^2b \over t^4a^4 + t^2b^2} \sim {a^2bt^3 \over b^2t^2} = {a^2 \over b}t \xrightarrow[t \to 0]{} 0
$$

Ainsi, dans n'importe quelle direction la limite est nulle

$$
f(t, t^2) = {t^2t^2 \over t^4 + (t^2)^2} = {t^4 \over 2t^4} = {1 \over 2} \xrightarrow[t \to 0]{} {1 \over 2}
$$

*Exemple.*
$$
f : \left\{\begin{array}{lcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & {x^2y^2 \over x^2 + y^2}\end{array}\right.
$$

Pour montrer que $f(u) \xrightarrow[u \to u_0]{} l$ on essaye de majorer $|f(u) - l|$ par des norme de $||u - u_o||$

**Ici**

$$
f(x, 0) \rightarrow 0
$$

donc la seule limite posible c'est $0$.

$$
|f(x, y)| = {|x^2||y^2| \over |x^2 + y^2|} \le {||u||^2||u||^2 \over ||u||^2} \le ||u||2 \xrightarrow[||u|| \to 0]{} 0
$$

Donc $f(x, y) \xrightarrow[(x, y) \to (0, 0)]{} 0$

**Définition.** On dit que $f$ **est continue en $u_0$** $\in U$ si $f(u) \xrightarrow[u \to u_0]{} f(u_0)$

**Définition.** On dit que $f$ est **continue sur $\mathcal{U}$** si $\forall u_0 \in \mathcal{U}$, $f$ est continue en $u_0$

En pratique, les fonctions sont souvent continues comme produits, composées, sommes de fonction continues

*Exemple.*
$$
f : \left\{\begin{array}{lcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & \begin{cases}
{x^2y^2 \over x^2 + y^2} \text{ si } (x, y) \ne (0, 0)\\
0 \text{ si } x=y=0\\
\end{cases} \end{array}\right.
$$

$f$ est continue sur $\mathbb{R}^2 \backslash \{(0, 0)\}$ comme rapport de deux fonctions continues en 0, $f$ est continue car $f(x, y) \xrightarrow[(x, y) \to (0, 0)]{} 0$ (par l'exemple précedent).s

## 2. Dérivées partielles

**Définition.**
$f: U \rightarrow \mathbb{R}$

On dit que $f$ admet une **dérivée partielle** par rapport à la i-ème variable en $u_0$ si ${f(u_0 + te_i) - f(u_0) \over t}$ admet une limite quand $t$ tend vers $0$

Ici, $e_i = (0,\dots,0,\underset{\text{n°i}}{1},0,\dots,0) \in \mathbb{R}^n$

*Notation.* cette derivée partielle est notée **${\partial f \over \partial x_i}(u_0)$** ou $\partial_i f(u_0)$

> **Attention.** $\partial \ne \delta$ ("d ronde" différent de "delta")

*Exemple.* Dans $\mathbb{R}^2,
f : \left\{\begin{array}{lcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & f(x, y)\end{array}\right.$

$$
{\partial f \over \partial x}(x_0, y_0) = \lim_{t \to 0} {f(x_0 + t, y_0) - f(x_0, y_0) \over t} = \text { dérivée en } x_0 \text{ de la fonction } x \mapsto f(x, y_0)
$$

*Exemple.* Soit $f(x,y) = xy - x^2y^3$, on dérive en voyant l'autre variable comme une constante :

$$
{\partial f \over \partial x}(x,y) = y - y^3(2x) = y - 2xy^3
$$

$$
{\partial f \over \partial y}(x,y) = x - 3x^2y^2
$$

> **Attention.** Ce n'est pas parce que $f$ admet des dérivées partielles en $u_0$ que $f$ est continue en $u_0$.

*Exemple.* Soit $f : \left\{\begin{array}{rcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x,y) & \mapsto & \left\{\begin{array}{ccl}
{xy \over x^2+y^2} & \text{ si } & (x,y) \ne (0,0)\\
0 & \text{ si } & x=y=0\\
\end{array}\right.\end{array}\right.$, $f$ admet des dérivées partielles en $0$ mais n'est pas continue en $0$.

> *Remarque.* La bonne notion qui generalise la derivabilité à plusieurs variable est la **differentiabilité**.

**Définition.** **$f$ est de classe $C^1$** si $f$ continue et si $f$ admet des dérivée partielle en tout point et que celles-ci sont continues

**Théorème.** Si $f$ est $C^1$, $u_0 \in U$ alors pour $h = (h_1, h_2, \dots, h_n)$

$$
f(u_0 + h) = f(u_0) + \sum\limits_{i=1}^{n} h_i {\partial f \over \partial x_i} (u_0) + ||h|| \varepsilon(h) \text{ où } \varepsilon(h) \xrightarrow[h \to 0]{} 0
$$

*Rappel.* En dimension $1$ : $f(x_0+h) = f(x_0) + hf'(x_0) + o(h)$

> *Remarque.* Ce théorème nous dit qu'au voisinage de $u_0 = (x_1, \dots, x_n)$ :
>
> $$f(u) \simeq f(u_0) + \sum\limits_{i=1}^{n} (x_i - y_i){\partial f \over \partial x_i}(u_0)$$
> ($\rightarrow$ équation du "plan" tangent au graphe de $f$ en $u_0$)
>
> $$u = u_0 + h = (y_1, \dots, y_n) \Rightarrow x_i - y_i$$

*Exemple.*
$$
f : \left\{\begin{array}{lcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\x & \mapsto & x^2 + y^2\end{array}\right.
$$
au voisinage de $(1, 1)$ :
$$
{\partial f \over \partial x} (1, 1) = 2
$$

$$
{\partial f \over \partial y} (1, 1) = 2
$$

$$
f(x, y) \approx \underset{2}{f(1, 1)} + 2(1 - x) + 2(1 - y) \approx 6 - 2x - 2y
$$

Le plan $\mathcal{P}$ d'équation $z = 6 - 2x - 2y$ est tangent à la surface $z = x^2 + y^2$ en $(1, 1)$

**Définition.**  Le **Gradient** de $f$ en $u$ est $\nabla  f(u) = \begin{pmatrix}
{\partial f \over \partial x_1} (u) \\
\vdots \\
{\partial f \over \partial x_n} (u) \\
\end{pmatrix}$ (prononcé "nabla") ou noté autrement $\text{grad}_u f$.

Ansi le théorème précédent donne  :

$$
f(u_0 + h) = f(u_0) + h.\nabla f(u_0) + o(h)
$$











.

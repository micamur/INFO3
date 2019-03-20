% Chapitre 3 - Calcul différentiel
% Julien GREPAT (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 8 février 2019

# 1 - Cas des fonctions $f : \mathbb{R}^n \rightarrow \mathbb{R}$

## 1

$$
X = \begin{pmatrix}
x_1\\
\vdots\\
x_n
\end{pmatrix} \text{ ; } h = \begin{pmatrix}
h_1\\
\vdots\\
h_n
\end{pmatrix} \in \mathbb{R}^n
$$

> *Rappel.* Soit $g : \mathbb{R} \rightarrow \mathbb{R}$, on a le DL à l'ordre 1 :
> $$g(x+h) = g(x)+\underset{g'(x)}{ah}+o(h)$$

## 2

$$
f(X + h) = f(X) + \sum\limits_{i=1}^{n} a_ih_i + o(h)
$$

$$
\text{avec }
X + h =
\begin{pmatrix}
x_1 + h_1\\
\vdots\\
x_n + h_n\\
\end{pmatrix}
$$

Soit $\sum\limits_{i=1}^{n} a_ih_i$ une application linéaire de $h$. C'est la **différentielle** de $f$ en $X$ : $D_Xf(h)$

**Définition.** La **dérivée partielle** de $f$ par rapport à la $i^\text{ème}$ variable en $X$ est définie par :

$${\partial f \over  \partial x_i}(X) = \lim\limits_{h \to 0} {f(x_1, \dots, x_i + h, \dots, x_n) - f(x_1, \dots, x_i, \dots, x_n) \over h}$$

**Théorème.** $D_Xf(h) = "\sum\limits_{i=1}^{n} a_ih_i" = \sum\limits_{i=1}^{n} {\partial f \over \partial x_i}(X) \times h_i$

## 3

**Note.** Plan tangeant : soit $f : \mathbb{R}^2 \rightarrow \mathbb{R}$.
On pose $z = f(x, y)$. On obtient le graphe de $f$.

Analogie avec $g : \mathbb{R} \rightarrow  \mathbb{R}$
Tangente à la courbe de $g$ en $(x_0,y_0) = y(x)$ : $y = \underset{y_0}{g(x_0)} + g'(x_0)(x-x_0)$

## 4

Plan tangent à $f$ au point $(x_0, y_0, \underset{f(x_0,y_0)}{z_0})$ :

$$
z = f(x_0, y_0) + {\partial f \over \partial x}(x_0, y_0)(x - x_0) + {\partial f \over \partial y}(x_0, y_0)(y - y_0)
$$

$D_Xf(h)$ est une application linéaire (en $h$). Elle peut être représentée par une matrice, nommée "Jacobienne" de $f$ en $X$, notée $\mathcal{J}_X(f)$ :

$$
D_Xf(h) = \sum\limits_{i=1}^{n} {\partial f \over \partial x_i}(X) \times h_i = \underset{= \mathcal{J}_X(f)}{\Bigg({\partial f \over \partial x_1}(X), \dots, {\partial f \over \partial x_n}(X)\Bigg)} \begin{pmatrix}
h_1\\
\vdots\\
h_n\\
\end{pmatrix}
$$

$$
D_Xf(h) = \sum\limits_{i=1}^{n} {\partial f \over \partial x_i} \times h_i = < \begin{pmatrix}
{\partial f \over \partial x_1}(X) \\
\vdots \\
{\partial f \over \partial x_n}(X)
\end{pmatrix} = grad_X(f), \begin{pmatrix}
h_i \\
\vdots \\
h_n
\end{pmatrix}>$$

*Exemple.* Soit $f : \left\{\begin{array}{rcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & x^2y\end{array}\right.$ sa dérivée partielle est :

$$
{\partial f \over \partial x}(x, y) = 2xy
$$
$$
{\partial f \over \partial y}(x, y) = x^2
$$
$$
\begin{array}{lcrcl}
\mathcal{D}_{x,y}f(h_1,h_2) & = & {\partial f \over \partial x}(x, y)h_1 & + & {\partial f \over \partial y}(x, y)h_2\\
 & = & 2xyh_1 & + & x^2h_2\\
 & = & \underset{\mathcal{J}_{(x,y)}(f)}{(2xy\; x^2)} & \times & \begin{pmatrix}
 h_1\\
 h_2\\
 \end{pmatrix}\\
\end{array}
$$
$$
grad_{(x, y)}(f) = \begin{pmatrix}
{\partial f \over \partial x}(x, y) \\
{\partial f \over \partial y}(x, y) \\
\end{pmatrix} = \begin{pmatrix}
2xy \\
x^2 \\
\end{pmatrix}
$$

Plan tangent à $f$ en $(2, 3)$ :
$$
\begin{array}{lcrcccl}
z & = & f(2, 3) & + & {\partial f \over \partial x}(2, 3) \times (x - 2) & + & {\partial f \over \partial y }(2, 3) \times (y - 3)\\
& = & 2^2 \times 3 & + & 2 \times 2 \times 3 (x - 2) & + & 2^2(y - 3)\\
& = & 12 & + & 12(x-2) & + & 4(y-3)
\end{array}
$$

**Définition.** $f$ est $C^1$ si ses dérivées partielles sont continues

# 2 - Cas de fonctions $f : \mathbb{R}^n \rightarrow  \mathbb{R}^p$

$$
X = \begin{pmatrix}
x_1 \\
\vdots \\
x_n
\end{pmatrix} \text{ , } h = \begin{pmatrix}
h_1 \\
\vdots \\
h_n
\end{pmatrix}
$$

$$
f(X) = \begin{pmatrix}
f_1(X) \\
\vdots \\
f_p(X)
\end{pmatrix}
$$

La différentielle se généralise coordonnée par coordonnée :
$$
D_Xf(h) = \begin{pmatrix}
D_Xf_1(h) \\
\vdots \\
D_Xf_p(h)
\end{pmatrix}
$$

La Jacobienne de $f$ en $X$ est :
$$
\mathcal{J}_X(f) = \begin{pmatrix}
\mathcal{J}_X(f_1)\\
\vdots \\
\mathcal{J}_X(f_n)\\
\end{pmatrix} =
\begin{pmatrix}
{\partial f_1 \over \partial x_1}(X) & \cdots & {\partial f_1 \over \partial x_r}(X)\\
\vdots &  & \vdots \\
{\partial f_p \over \partial x_1}(X) & \cdots & {\partial f_p \over \partial x_r}(X)\\
\end{pmatrix}
$$

**Théorème.** Jacobienne de composée de fonctions :
- $f : \mathbb{R}^n \rightarrow  \mathbb{R}^p$ différentiable autour de $X$
- $g : \mathbb{R}^p \rightarrow  \mathbb{R}^q$ différentiable autour de $f(X)$

$g \circ f$ est différentiable autour de $X$ et de Jaboienne :
$$
\mathcal{J}_x(g \circ f) = \mathcal{J}_{f(X)}(g) \mathcal{J}_x(f)
$$

> *Remarque.* Analogie réelle : $(g \circ f)' = g'(f(x))f'(x)$

*Exemple.* Soient $f : \left\{\begin{array}{rcl} \mathbb{R} & \rightarrow & \mathbb{R}^2\\t & \mapsto & \begin{pmatrix}
\sin t \\
\cos t \\
\end{pmatrix}\end{array}\right.$ et $g : \left\{\begin{array}{rcl} \mathbb{R}^2 & \rightarrow & \mathbb{R}\\(x, y) & \mapsto & xy\end{array}\right.$

On étudie $g \circ f : \mathbb{R} \rightarrow \mathbb{R}$ :

$$
\mathcal{J}_t(f) = \begin{pmatrix}
{\partial f_1 \over \partial t}(t) \\
{\partial f_2 \over \partial t}(t)
\end{pmatrix} =
\begin{pmatrix}
\cos(t)\\
-\sin(t)\\
\end{pmatrix}
\text{ ; }
\mathcal{J}_{(x,y)}(g) =
\Bigg({\partial g_1 \over \partial x}(x,y)\;
{\partial g_2 \over \partial y}(x,y)\Bigg) =
(y\; x)
$$

$$
\begin{array}{lcl}
\mathcal{J}_t(g \circ f) & = & \mathcal{J}_{f(t)}(g) \mathcal{J}_t(f)\\
& = & (\cos t \sin t) \begin{pmatrix}
\cos t \\
-\sin t \\
\end{pmatrix}\\
& = & (\cos^2t - \sin^2t)
\end{array}
$$

# 3) Cas des fonctions : $f : \mathbb{R}^n \rightarrow  \mathbb{R}^n$

**Définition.** La **divergence** de $f$ est la trace (= somme des termes diagonaux) de la matrice Jacobienne :

$$
div_Xf = {\partial f_1 \over \partial x_1}(X) + \dots + {\partial f_n \over \partial x_n}(X)
$$

**Notation.**  $\nabla = \begin{pmatrix}
{\partial \over \partial x_1} \\
\vdots \\
{\partial \over \partial x_n} \\
\end{pmatrix}$ Formellement $div_xf = < \nabla, f(x)>$

# 4) Cas des fonctions $f : \mathbb{R}^3 \rightarrow  \mathbb{R}^3$

**Rappel.** (Produit vectoriel)
$$
\begin{pmatrix}
x \\
y \\
z \\
\end{pmatrix} \land \begin{pmatrix}
x' \\
y' \\
z' \\
\end{pmatrix} = \begin{pmatrix}
yz' - zy' \\
-xz' + zx' \\
xy' - yx' \\
\end{pmatrix}
$$

**Définition.** Rotationnel de $f$ en $X$ :

$$
Rot_X(f) = \nabla \land f = \begin{pmatrix}
{\partial \over \partial x} \\
{\partial \over \partial y} \\
{\partial \over \partial z} \\
\end{pmatrix} \land \begin{pmatrix}
f_1(X) \\
f_2(X) \\
f_3(X) \\
\end{pmatrix} = \begin{pmatrix}
{\partial f_3 \over y}(X) - {\partial f_2 \over z}(X)\\
-{\partial f_3 \over y}(X) + {\partial f_1 \over z}(X)\\
{\partial f_2 \over x}(X) - {\partial f_1 \over y}(X)\\
\end{pmatrix} $$

**Définition.** On dit que $f$ dérive d'un potentiel s'il existe une fonction $V : \mathbb{R}^3 \rightarrow \mathbb{R}^3$ tq.
$$
f(x, y, z) = grad_{(x, y, z)}V
$$

**Théorème.**
- Si $f$ dérive d'un potentiel $Rot f = 0$
- Si $f$  est définie sur la boule $\mathcal{B}$ avec $rot_x f = 0 \forall x \in \mathcal{B}$, alors sur $\mathcal{B}$, $f$ dérive d'un potentiel.

**Propriétés.**  Soit $F, G : \mathbb{R}^3 \rightarrow \mathbb{R}^3$ et $f, g : \mathbb{R}^3 \rightarrow  \mathbb{R}$

- $grad_X(fg) = f \times grad_X(g) + g \times grad_x(f)$
- $div_X(fG) = f \times div_X(G) + <grad(f), G>$
- $rot_X(fG) = f \times rot(G) + grad(f) \land G$
- $div(F \land G) = <G, rot(F)> - <F, rot(G)>$

# 5) Dérivées partielles d'ordre 2 $f : \mathbb{R}^n \rightarrow  \mathbb{R}$

> *Rappel.* Soit $X = \begin{pmatrix}
x_1 \\
\vdots \\
x_n \\
\end{pmatrix}$ et $f : \mathbb{R}^n \rightarrow \mathbb{R}$ alors sa dérivée partielle est :
>
> $$X \mapsto {\partial f \over \partial x_i}(X)$$

Si la dérivée partielle est différentiable, on peut "re" dériver :
$$
{\partial \over \partial x_j } \Big({\partial f \over \partial x_i} (X)\Big) = {\partial ^2 f \over \partial x_j \partial x_i} (X)
$$

Si $i = j$ (*notation*):

$$
 {\partial ^2 f \over \partial x_j \partial x_i} (X) = {\partial^2 f \over \partial x_i^2}(X)
$$

*Exemple.* Soient $f(x, y) = x^2y$, $X = \begin{pmatrix}
x \\
y \\
\end{pmatrix}$, ${\partial f \over \partial x} (X) = 2xy$, ${\partial f \over \partial y} (X) = x^2$

$$
{\partial^2 f \over \partial x^2} (X) = {\partial \over \partial x} (2xy) = 2y
$$

$$
{\partial^2 f \over \partial y^2} (X) = {\partial \over \partial y} (x^2) = 0
$$

$$
{\partial^2 f \over \partial y \partial x} (X) = {\partial^2 f \over \partial x \partial y} (X) = {\partial \over \partial y} (2xy) = 2x
$$

**Théorème de Schwarz.** Si $f$ est deux fois différentiable :

$$
{\partial f \over \partial x \partial y} = {\partial f \over \partial y \partial x}
$$

**Définition.** Soit $f : \mathbb{R}^n \rightarrow \mathbb{R}$. Le **Laplacien** de $f$ en $X$ est défini par :

$$
\begin{array}{lcl}
\Delta f(X) & = & div(grad_X f) \\
 & = & div_X \begin{pmatrix}
 {\partial f \over \partial x_1}(X) \\
 \vdots \\
 {\partial f \over \partial x_n}(X) \\
 \end{pmatrix}\\
 & = & {\partial^2 f \over \partial x^2_1}(X) + \cdots + {\partial^2 f \over \partial x^2_n}(X)
\end{array}
$$












.

% Chapitre 6 - Équations différentielles
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 26 Octobre 2018

# Introduction

Ici on s'intéresse à des équations où l'inconnue est une fonction $y$ et faisant intervenir les dérivées de $y$.

*Exemple.* Solutions pour $y''(t) - y(t) = 0$ (il y en a une infinité) :
- $y = 0$ OK
- $y(t) = e^t$ OK
- $y(t) = e^{-t}$ OK
- $y(t) = Ce^t$ OK

# 1) Équations linéaires du $1^{\text{er}}$ ordre

$$
(E)\ y'(x) + a(x)y(x) = b(x)
$$

## a) Équation homogène

$$
(E_H)\ y'(x) + a(x)y(x) = 0
$$

"Idée" pour trouver la solution

$$
\begin{array}{lcl}
(E_H) & \Leftrightarrow & y' = -ay \\
& \Leftrightarrow & {y' \over y} = -a \\
& \Leftrightarrow & ln(y) = -A + Ctse\ (A \text{ est une primitive de } a)\\
& \Leftrightarrow & y = Cste \times e^{-A}
\end{array}
$$

Les solutions de $(E_H)$ sont $x \mapsto Ce^{-A(x)}$ avec $C \in \mathbb{R}$ et $A$ une primitive de $a$.

*Exemple.* $y' - y = 0\ (E_h)$
$$
\begin{array}{lcl}
y' = y & \Leftrightarrow & {y' \over y} = 1\\
& \Leftrightarrow & ln(y(x)) = x +\ Cste \\
& \Leftrightarrow & y(x) = Cste \times e^x\\
\end{array}
$$

Donc les solutions de $(E_H)$ sont $\{ x \mapsto Ce^x | \; C \in \mathbb{R} \}$

*Exemple.* Soit $(E_H)\; y'(t) - ty(t) = 0$, ici $a(t) = -t$ et une primitive de $a$ est $A : t \mapsto -{t^2 \over 2}$
Donc les solutions de $E_H$ sont $\{t \mapsto Ce^{t^2 \over 2}\ | C \in \mathbb{R}\}$

> *Remarque.* En général on a :
> $$
> \begin{cases}
> y' - ay = b\\
> y(0) = y_0 \leftarrow \text{ permet d'avoir une unique solution}\\
> \end{cases}
> $$

*Exemple.*
$$
\left\{\begin{array}{rcl}
y'(t) - ty(t) & = & 0\\
y(0) & = & 4\\
\end{array}\right.
$$

Solutions de $(E_H)$ : $\{t \mapsto Ce^{t^2/2} | \; C \in \mathbb{R}\}$.
On cherche donc la solution tq $y(0) = 4$ c'est-à-dire la valeur de $C$ pour que $y(0) = 4$

$$
\begin{array}{rcl}
y(0 = 4) & \Leftrightarrow & Ce^0 = 4 \\
& \Leftrightarrow & C = 4 \\
\end{array}
$$

$\boxed{\text{Donc la solution du problème est : } t \mapsto 4e^{t^2/2}}$

## b) Équation avec second membre

$$
y'(t) + a(t)y(t) = b(t) \; (E)
$$

- **Étape 1.** Résoudre l'équation homogène associée
  $$
  y'(t) + a(t)y(t) = 0 \; (E_H) \\
  \{t \mapsto Ce^{-A(t)}\}
  $$
- **Étape 2.** Les solutions de $(E)$ sont de la forme
  $$
  y(t) = \underset{\text{solution de }(E_H) \rightarrow  \text{ étape 1}}{y_H(t)} + \underset{\text{solution particulière de }(E)}{y_P(t)}
  $$

  Il rest donc à trouver une solution particulière. Pour cela on peut utiliser **la méthode de la variation de la constante**.

### Méthode de la variation de la constante (pour trouver une solution particulière)

**Méthode.**
On cherche $y_P$ sous la forme
$$
y_P(t) = C(t)e^{-A(t)}\\
\text{ alors }
y'_P(t) = C'(t)e^{-A(t)} - a(t)C(t)e^{-A(t)}\\
\text{ et }
y'_P(t) + a(t)y_P(t) = C'(t)e^{-A(t)}\\
\text{ donc on veut }
C'(t)e^{-A(t)} = b(t)\\
\text{ donc }
C'(t) = b(t)e^{A(t)}
$$

Et $C$ est une primitive de $t \mapsto b(t)e^{A(t)}$.
On trouve ainsi $y_P(t) = C(t)e^{-A(t)}$

*Exemple.* $y' - y = 2 \; (E)$
1. Équation homogènes $y' - y = 0$
  $y_H(t) = Ce^t$
2. Solution particulière : on cherche la solution particulière sous la forme
  $y_P(t) = C(t)e^t$, ainsi $y'_P(t) = C'(t)e^t+C(t)e^t$ or,
  $$
  \begin{array}{lcl}
  y'_P(t) - y_P(t) = 2 & \Leftrightarrow & C'(t)e^t = 2\\
   & \Leftrightarrow & C'(t) = 2e^{-t} \\
  \end{array}
  $$
  Donc $C(t) = -2e^{-t}$ convient et
  $$
  \begin{array}{lcl}
  y_P(t) & = & C(t)e^t\\
   & = & (-2e^{-t})e^t\\
   & = & -2 \text{ convient}
  \end{array}
  $$

Donc les solutions de $(E)$ sont
$$
\{t \mapsto {Ce^t \over y_H(t)} - {2 \over y_P(t)}\ |\ C \in \mathbb{R}\}
$$

*Exemple.* $y'(t)-ty(t) = 2t$
1. Équation homogènes
  $$
  (E_H)\; y'(t)-ty(t) = 0\\
  y'(t) = ty(t) \Leftrightarrow {y'(t) \over y(t)} = t\\
  \ln(y(t)) = {t^2 \over 2} + Cste\\
  y(t)=Ce^{t^2/2}\\
  \text{ Ainsi }
  y_H(t) = Ce^{t^2/2}
  $$

2. Solution particulière
  On cherche $y_P(t) = C(t)e^{t^2 \over 2}$
  $$
  y'_P(t) = C'(t)e^{t^2 \over 2} + tC(t)e^{t^2 \over 2}
  $$
  Donc $2t = y'_P(t) - ty_p(t) = C'(t)e^{t^2 \over 2}$
  Donc $C'(t) = 2te^{-t^2 \over 2}$
  Donc $C(t) = -2e^{-t^2 \over 2}(+Cste)$
  Ainsi
  $$
  \begin{array}{lcl}
   Y_P & = & C(t)e^{t^2 \over 2}\\
   & = & (-2e^{-t^2 \over 2})e^{t^2 \over 2}\\
   & = & - 2
  \end{array}
  $$
  Donc les solutions de $(E)$ sont $\{t \mapsto \underset{y_H(t)}{Ce^{t^2/2}} - \underset{y_P(t)}{2}\ | \; C \in \mathbb{R}\}$

### D'autres méthodes pour trouver une solution particulière

Ces méthodes ne marchent pas tout le temps, et seulement quand **$a$ est constant**.

- Si $b(t) = P(t)$, alors on peut chercher $y_P(t) = Q(t)$ (= polynôme en $t$ avec $d°Q = d°P$)
- Si $b(t) = \underset{\text{polynôme en } t}{P(t)} e^{\lambda t}$ alors on peut chercher $y_P(t) = Q(t) e^{\lambda t}$

$$
\begin{array}{lcl}
d°Q = d°P & \text{ si } & \lambda \neq -a\\
d°Q = d°P+1 & \text{ si } & \lambda = -a\\
\end{array}
$$

*Exemple.* Soit $(E)\; y'(t) + y(t) = (1 + t)e^{2t}$, on cherche $y_P(t)$ sous la forme

$$
y_P(t) = (at + b)e^{2t}
$$

$$
\begin{array}{cll}
y'_P(t) & = & ae^{2t} + 2(at + b)e^{2t} \\
& = & (2at + (a + 2b))e^{2t} \\
\end{array}
$$

$$
\begin{array}{lcl}
y'_P(t) + y_P(t)& = & (3at + (a + 3b)) \\
& = & (2tt) \\
\end{array}
$$

Donc

$$
\begin{cases}
3a = 1\\
a+3b = 2\\
\end{cases}
\Leftrightarrow
\begin{cases}
a = {1 \over 3}\\
b = {1 \over 3}(2-a) = {1 \over 3}({6 \over 3} - {1 \over 3}) = {5 \over 9}\\
\end{cases}
$$

Donc $\boxed{y_P(t) = \Big({t \over 3} + {5 \over 9}\Big) e^{2t}}$

*Exemple.* Soit $y'(t) - y(t) = (2t + t^2)e^t$,
Chercher une solution particulière
$$
y_P(t) = Q(t)e^t
$$
on est danc le cas ou "$\lambda = -a$"

Donc $y_P(t) = (a+bt+ct^2+dt^3)e^t$
$$
\begin{array}{lcl}
y'_P & = & (b+2ct+3dt^2)e^t + (a+bt+ct^2+dt^3)e^t\\
 & = & \Big((a + b) + (2c + b)t + (3d +c)t^2 + dt^3\Big)e^t\\
\end{array}
$$

Donc
$$
\begin{array}{lcl}
y'_P(t) - y_P(t) & = & (b + 2ct + 3dt^2)e^t \\
& = & (2ttt^2)e^t \\
\end{array}
$$

Donc $\begin{cases}
b = 0\\
2c = 2\\
3d = 1
\end{cases} \Leftrightarrow \begin{cases}
b = 0\\
c = 1\\
d = 1/3
\end{cases}$ avec $a \in \mathbb{R}$ et enfin $\boxed{y_P(t) = (t^2+{t^3 \over 3})e^t}$

> *Remarque.* Si $b(t) = P(t)cos(\omega t)$,\\
> Il faut se rappeler que $cos(\omega t) + isin(\omega t) = e^{i \omega t}$

On cherche alors $y_P(t) = Q(t)e^{i \omega t}$ solution de  $y'(t) + ay(t) = P(t)e^{i \omega t}$

Ainsi,
- $Re(y_P(t))$ est solution de $y'(t) + ay(t) = P(t)\cos(\omega t)$
- $Im(y_P(t))$ est solution de $y'(t) + ay(t) = P(t)sin(\omega t)$

*Exemple.* Trouver la solution de $(E)\ :\ \begin{cases}
y' - 2y = e^{2x}\\
y(0) = 1\\t
\end{cases}$

- Solution homogène : $y'_H - 2y_H = 0 \Leftrightarrow y_H(x) = \lambda e^{2x}$ avec $\lambda \in \mathbb{R}$
- Solution particulière : on peut chercher $y_P$ sous la forme :

  $$
  \begin{array}{lcl}
  y_P(x) = (ax+b)e^{2x} & : & -2\\
  y'_P(x) = (2ax + (a+2b)) e^{2x} & : & 1\\
  \rightarrow y_P(x) - 2y_P(x) = ae^{2x} & \Rightarrow & a = 1
  \end{array}
  $$

  ainsi,  $y_P(x) = xe^{2x}$ convient et les solutions de $y' - 2y = e^{2x}$ sont $\{x \mapsto (\lambda+x) e^{2x}\ |\ \lambda \in \mathbb{R}\}$

- Cherchons maintenant les solutions tel que $y(0) = 1 \Leftrightarrow (\lambda+0) e^{-2 \times 0} = 1 \Leftrightarrow \lambda = 1$. Donc la solution du système $(E)$ est $\boxed{y : \left\{\begin{array}{rcl} \mathbb{R} & \rightarrow & \mathbb{R}\\x & \mapsto & (1+x)e^{2x}\end{array}\right.}$

### Principe de superposition

Comment trouver une solution particulère de $(E)\; y'(t) + a(t)y(t) = b_1(t) + b_2(t)$ ?

On considère
$$
(E_1)\;  y'(t) + a(t)y(t) = b_1(t) \\
(E_2)\;  y'(t) + a(t)y(t) = b_2(t) \\
$$

On cherche alors :
- $y_1$ solution particulière de $(E_1)$
- $y_2$ solution particulière de $(E_2)$

Alors $y_P = y_1 + y_2$ est une solution particulière de $(E)$

*Exemple.* $(E)\ y' - 2y = e^{2x} + e^{3x}$

Chercher une solution particulière :
$$
(E_1)\; y' - 2y = e^{2x}\\
(E_2)\; y' - 2y = e^{3x}
$$

- Une solution particulière de $(E_1)$ est $y_1(t) = xe^{2x}$
- Cherchons une solution particulère de $(E_2)$ :
  On cherche $y_2(x) = Ce^{3x}$
  $$
  \begin{array}{rclcl}
  y_2(x) & = & Ce^{3x} & : & - 2\\
  y_2'(x) & = & 3Ce^{3x} & : & 1\\
  \rightarrow y'_2(x) - 2y_2(x) & = & Ce^{3xa} & \Rightarrow & C = 1
  \end{array}
  $$

  Ainsi, $y_2(x) = e^{3x}$, donc une solution particulière pour $(E)$ est :

  $$
  \begin{array}{lcl}
  y_P(x) & = & y_1(x) + y_2(x)\\
         & = & xe^{2x} + e^{3x}\\
  \end{array}
  $$

# 2) Équations differentielles d'ordre 2 à coefficients constants

$$
(E)\; ay''(t) + by'(t) + cy(t) = d(t)
$$

Comme d'habitude les solutions de $(E)$ sont de la forme $y(t) = \underset{\text{sol. de }(E_H)}{y_H(t)} + \underset{\text{sol. part. de }(E)}{y_P(t)}$
où $(E_H)$ est l'équation homogène
$$
ay'' + by' + cy = 0
$$

### Solution homogène

Pour résoudre $(E)$, on passe par le **polynôme caractéristique** : $P(r) = ar^2 + br + c$ (ici $r$ est la variable) et on cherche alors les racine de ce polynôme.

$\Delta = b^2 - 4ac$

- Cas 1 ($\Delta > 0$) : $r_1$ et $r_2$ sont les deux racines réelles distinctes

  Alors, les solutions de $(E_H)$ sont :

  $$
  \boxed{y_H(t) = \lambda_1 e^{r_1t} + \lambda_2 e^{r_2t}} \text{ avec } \lambda_1, \lambda_2 \in \mathbb{R}
  $$

- Cas 2 ($\Delta = 0$) : une racine réelle double $r_0$

  Alors, les solutions de $(E_H)$ sont :

  $$
  \boxed{y_H(t) = (\lambda + \mu t)e^{r_0t}} \text{ avec } \lambda, \mu \in \mathbb{R}
  $$

- Cas 3 ($\Delta < 0$) : $z_1 = r + i\omega$ et $z_2 = r - i\omega$ sont les deux racines complexes distinctes

  Alors, les solutions de $(E_H)$ sont :

  $$
  \boxed{y_H(t) = \lambda_1 e^{rt} \cos(\omega t) + \lambda_2 e^{rt} \sin(\omega t)} \text{ avec } \lambda_1, \lambda_2 \in \mathbb{R}
  $$

*Exemple.* $y'' - y = 0$
  Polynôme caractéristique : $P(r) = r^2 - 1$

  $\Delta > 0$ et les racines de $P$ sont $r_1 = 1$ et $r_2 = -1$

  Les solutions de $E_H$ sont de la forme
  $$
  \boxed{y_H(t) = \lambda_1 e^{t} + \lambda_2 e^{-t}} \text{ avec } \lambda_1, \lambda_2 \in \mathbb{R}
  $$

*Exemple.* $(E_H)\; y'' + y = 0$

  Polynôme caractéristique : $P(r) = 1 \times r^2 + 0 \times r + 1$

  $\Delta < 0$ et les deux racines complexes de $P$ sont $z_1 = i$ et $z_2 = -i$ ($r = 0$ et $\omega = 1$)

  Les solutions de $E_H$ sont de la forme
  $$
  \boxed{y_H(t) = \lambda_1 \cos(t) + \lambda_2 \sin(t)} \text{ avec } \lambda_1, \lambda_2 \in \mathbb{R}
  $$

### Solution particulière

$$
(E)\; ay'' + by' + cy = d(t)
$$

- Il existe une méthode de variation de la constante (voir sur [Unisciel][da8df6fa])
- Si $d(t) = P(t)e^{\lambda t}$
  On cherche alors $y_p(t)$ sous la forme $y_p(t) = \underset{\text{polynôme en t}}Q(t)e^{\lambda t}$ avec

  $$
  \left\{\begin{array}{rl}
  d°Q = d°P & \text{ si } \lambda \text{ n'est pas racine du polynôme caractéristique }\\
  d°Q = d°P + 1 & \text{ si } \lambda \text { est racine simple du polynôme caractéristique}\\
  d°Q = d°P + 2 & \text{ si } \lambda \text { est racine double du polynôme caractéristique}\\
  \end{array}\right.
  $$

  *Exemple.* $y'' - y = e^{-t}$
  - solution homogène
    $$
    y_h(t) = \lambda_1e^{-t} + \lambda_2e^{t}
    $$

  - solution particulière
    On cherche $y_p$ sous la forme
    $$
    \begin{array}{llllll}
    & y_P(t) & = & (at + b)e^{-t} & : & - 1\\
    & y'_P(t) & = &  (-at + (a-b)) e^{-t} & : & 0\\
    & y''_P(t) & = & (at + (-2a + b)) e^{-t} & : & 1\\
    \Rightarrow & y''_P(t) - y_P(t) & = & -2a\ e^{-t}
    \end{array}
    $$
    Donc $y_P$ solution $\Leftrightarrow - 2a = 1 \Leftrightarrow a = 1$

    Ainsi $y_P(t) = {-1 \over 2}te^{-t}$ convient.

    Les solutions de $(E)$ sont :

    $$
    \boxed{\{t \mapsto \lambda_1 e^{-t} + \lambda_2 e^t - {1 \over 2} t\ e^{-t}\ |\ \lambda_1, \lambda_2 \in \mathbb{R}\}}
    $$

- Si $d(t) = P(t)e^{rt}\cos(\omega t)$ (ou $P(t)e^{rt}\sin(\omega t)$) on regarde alors
  $$
  (\widetilde{E})\ ay'' + by' + cy = P(t)e^{(r + i\omega)t}
  $$
  On cherche alors une solution particulière comme dans le cas précedent avec $\lambda = r + i\omega$

  Ob obtient alors $\widetilde{y}(t) = Q(t) e^{(r+i\omega)t}$

  Alors
  - $y_P(t) = Re(\widetilde{y}(t))$ donne une solution particulière de
    $$
    ay'' + by' + cy = P(t)e^{rt}\cos(\omega t)
    $$
  - $y_P(t) = Im(\widetilde{y}(t))$ donne une solution particulière de
    $$
    ay'' + by' + cy = P(t)e^{rt}\sin(\omega t)
    $$

  > *Remarque.* On a aussi un principe de superposition :
  >
  > Pour trouver une solution de $ay'' + by' + cy = d_1(t) + d_2(t)$ on fait la somme d'une solution particulière de
  > $(E_1)\; ay'' + by' + cy + d_1(t)$
  > et d'une solution particulière de
  > $(E_2)\; ay'' + by' + cy + d_2(t)$


*Exemple.* $y'' + 2y' + y = \cos(t) e^{-t}$

- Solution homogène :
  $$
  \begin{array}{lcl}
  P(r) & = & r^2 + 2r + 1\\
       & = & (r + 1)^2\\
  \end{array}
  $$

  Donc $y_H(t) = (\lambda t + \mu) e^{-t}$

- Solution particulière :

  $$
  (\widetilde{E})\ y'' + 2y' + y = e^{(-1+i)t}
  $$
  > $(-1 + i)$ n'est pas racine de $P$ donc on cherche une solution particulière de la forme $\widetilde{y}(t) = ae^{(-1 + i)t}$

  $$
  \begin{array}{llllll}
  & \widetilde{y}(t) & = & ae^{(i - 1)t} & : & 1\\
  & \widetilde{y}'(t) & = & a(i - 1)e^{(i - 1)t} & : & 2\\
  & \widetilde{y}''(t) & = & a(i - 1)^2e^{(i - 1)t} & : & 1\\
  \Rightarrow & \widetilde{y}''(t) + 2\widetilde{y}'(t) + \widetilde{y}(t) & = & a(1 + 2(i-1) +(i-1)^2) e^{(i-1)t}\\
  & & = & a(1 + (i-1))^2 e^{(i-1)t}\\
  & & = & ai^2e^{(i-1)t}\\
  & & = & -ae^{(i-1)t}\\
  \end{array}
  $$

  Ainsi une solution particulière de $(\widetilde{E})$ est $\widetilde{y}(t) = -e^{(i - 1)t}$

  Ainsi, une solution particulière de $(E)$ est





  [da8df6fa]: http://uel.unisciel.fr/physique/outils_nancy/outils_nancy_ch10/co/apprendre_ch10_03.html "ED linéaires à coefficients constants, avec second membre"

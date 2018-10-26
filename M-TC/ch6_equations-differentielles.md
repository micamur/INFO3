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
\begin{array}{ll}
(E_H) & \Leftrightarrow & y' = -ay \\
& \Leftrightarrow & {y' \over y} = -a \\
& \Leftrightarrow & ln(y) = -A + Ctse\ (A \text{ est une primitive de } a)\\
& \Leftrightarrow & y = Cste \times e^{-A}
\end{array}
$$

Les solutions de $(E_H)$ sont $x \mapsto Ce^{-A(x)}$ avec $C \in \mathbb{R}$ et $A$ une primitive de $a$.

*Exemple.* $y' - y = 0\ (E_h)$
$$
\begin{array}{ll}
y' = y & \Leftrightarrow & {y' \over y} = 1\\
& \Leftrightarrow & ln(y(x)) = x +\ Cste \\
& \Leftrightarrow & y(x) = Cste \times e^x\\
\end{array}
$$

Donc les solutions de $(E_H)$ sont $\{x \mapsto Ce^x |\ C \in \mathbb{R}\}$

*Exemple.* Soit $(E_H)\ y'(t) - ty(t) = 0$, ici $a(t) = -t$ et une primitive de $a$ est $A : t \mapsto -{t^2 \over 2}$
Donc les solutions de $E_H$ sont $\{t \mapsto Ce^{t^2 \over 2} | C \in \mathbb{R}\}$

> *Remarque.* En général on a :
> $$
> \begin{cases}
> y' - ay = b\\
> y(0) = y_0 \leftarrow \text{ permet d'avoir une unique solution}\\
> \end{cases}
> $$

*Exemple.*
$$
\left\{\begin{array}{rl}
y'(t) - ty(t) & = & 0\\
y(0) & = & 4\\
\end{array}\right.
$$

Solutions de $(E_H)$ : $\{t \mapsto Ce^{t^2/2} |\ C \in \mathbb{R}\}$.
On cherche donc la solution tq $y(0) = 4$ c'est-à-dire la valeur de $C$ pour que $y(0) = 4$

$$
\begin{array}{rl}
y(0 = 4) & \Leftrightarrow & Ce^0 = 4 \\
& \Leftrightarrow & C = 4 \\
\end{array}
$$

$\boxed{\text{Donc la solution du problème est : } t \mapsto 4e^{t^2/2}}$

## b) Équation avec second membre

$$
y'(t) + a(t)y(t) = b(t)\ (E)
$$

- **Étape 1.** Résoudre l'équation homogène associée
  $$
  y'(t) + a(t)y(t) = 0\ (E_H) \\
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

*Exemple.* $y' - y = 2\ (E)$
1. Équation homogènes $y' - y = 0$
  $y_H(t) = Ce^t$
2. Solution particulière : on cherche la solution particulière sous la forme
  $y_P(t) = C(t)e^t$, ainsi $y'_P(t) = C'(t)e^t+C(t)e^t$ or,
  $$
  \begin{array}{ll}
  y'_P(t) - y_P(t) = 2 & \Leftrightarrow & C'(t)e^t = 2\\
   & \Leftrightarrow & C'(t) = 2e^{-t} \\
  \end{array}
  $$
  Donc $C(t) = -2e^{-t}$ convient et
  $$
  \begin{array}{ll}
  y_P(t) & = & C(t)e^t\\
   & = & (-2e^{-t})e^t\\
   & = & -2 \text{ convient}
  \end{array}
  $$

Donc les solutions de $(E)$ sont
$$
\{t \mapsto {Ce^t \over y_H(t)} - {2 \over y_P(t)} | C \in \mathbb{R}\}
$$

*Exemple.* $y'(t)-ty(t) = 2t$
1. Équation homogènes
  $$
  (E_H)\ y'(t)-ty(t) = 0\\
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
  \begin{array}{ll}
   Y_P & = & C(t)e^{t^2 \over 2}\\
   & = & (-2e^{-t^2 \over 2})e^{t^2 \over 2}\\
   & = & - 2
  \end{array}
  $$
  Donc les solutions de $(E)$ sont $\{t \mapsto \underset{y_H(t)}{Ce^{t^2/2}} - \underset{y_P(t)}{2}\ |\ C \in \mathbb{R}\}$

### D'autres méthodes pour trouver une solution particulière

Ces méthodes ne marchent pas tout le temps, et seulement quand **$a$ est constant**.

- Si $b(t) = P(t)$, alors on peut chercher $y_P(t) = Q(t)$ (= polynôme en $t$ avec $d°Q = d°P$)
- Si $b(t) = \underset{\text{polynôme en } t}{P(t)} e^{\lambda t}$ alors on peut chercher $y_P(t) = Q(t) e^{\lambda t}$

$$
\begin{array}{ll}
d°Q = d°P & \text{ si } & \lambda \neq -a\\
d°Q = d°P+1 & \text{ si } & \lambda = -a\\
\end{array}
$$

*Exemple.* Soit $(E)\ y'(t) + y(t) = (1 + t)e^{2t}$, on cherche $y_P(t)$ sous la forme

$$
y_P(t) = (at + b)e^{2t}
$$

$$
\begin{array}{ll}
y'_P(t) & = & ae^{2t} + 2(at + b)e^{2t} \\
& = & (2at + (a + 2b))e^{2t} \\
\end{array}
$$

$$
\begin{array}{ll}
y'_P(t) + y_P(t)& = & (3at + (a + 3b)) \\
& = & (2tt) \\
\end{array}
$$
(e^{2t})
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
\begin{array}{ll}
y'_P & = & (b+2ct+3dt^2)e^t + (a+bt+ct^2+dt^3)e^t\\
 & = & \Big((a + b) + (2c + b)t + (3d +c)t^2 + dt^3\Big)e^t\\
\end{array}
$$

Donc
$$
\begin{array}{ll}
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







.

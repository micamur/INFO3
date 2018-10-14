% Chapitre 4 - Étude d'une fonction d'une variable réelle
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 5 Octobre 2018

# A) Fonctions usuelles

- Fonctions **affines** : $\begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\
  x \mapsto ax+b\\ \end{array}$

  *Exemple.* ![Schéma d'une fonction affine]

- Fonctions **puissances** : $\begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\
  x \mapsto x^n \\ \end{array}$

  *Exemples.* ![Schéma de fonctions puissances]

> Si n pair, $x \mapsto x^n$ est une fonction **paire** ($\forall, f(-x) = f(x)$)

> Si n impair, $x \mapsto x^n$ est une fonction **impaire** ($\forall, f(-x) = -f(x)$)

- Fonctions **sin** : $\begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\
  x \mapsto sin(x) \\ \end{array}$

- Fonction **cos** : $\begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\
    x \mapsto cos(x) \\ \end{array}$

*Exemples.* ![Schémas de fonctions sin et cos]

> sin et cos sont $2\pi$-périodiques ($f(x + 2\pi) = f(x)$)

> sin impaire

> cos paire

- Fonctions **exponentielle** : $\begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\  x \mapsto e^x \\ \end{array}$

- Fonction **ln** : $\begin{array}{c @{=} c} \mathbb{R_+^*} \rightarrow \mathbb{R}\\  x \mapsto ln(x) \\ \end{array}$

> $exp$ et $ln$ sont des fonctions **réciproques** l'une de l'autre. C'est-à-dire :
> - $\forall x > 0,\ e^{ln(x)} = x$
> - $\forall x \in \mathbb{R},\ ln(e^x) = x$

*Exemples.* ![Schémas de fonctions exponentielle et log]

- Fonctions **puissance** généralisées : $\begin{array}{c @{=} c} \mathbb{R_+^*} \rightarrow \mathbb{R}\\ x \mapsto x^\alpha = e^{\alpha ln(x)},\ \alpha \in \mathbb{R}^+ \\ \end{array}$

*Exemple.*
$x^{1 \over 2} = \sqrt{x}$
![Schéma de fonctions puissance]

# B) Dérivation

**Définition.** $F : I \rightarrow \mathbb{R}, a \in I$
- $f$ est **dérivable en a** si ${f(a + h) - f(a) \over h}$  admet une limite quand $h \rightarrow 0$. Cette limite est alors noté $f'(a)$.
- $f$ est **dérivable sur $I$** si elle est dérivable en tout point de $I$.

*Exemple.* $f : \begin{array}{c @{=} c} \mathbb{R} \rightarrow \mathbb{R}\\ x \mapsto x^2 \\ \end{array}$
$a \in \mathbb{R}$
$$
{f(a + h) - f(a) \over h} = {(a + h)^2 - a^2 \over h}
$$
$$
= 2a + h \underset{h \rightarrow 0}{\rightarrow} 2a
$$

Donc $f$ est dérivable en $a$ et $f'(a)=2a$ ;
ainsi, $f$ est dérivable sur $\mathbb{R}$ et $f'(x) = 2x$.

*Exemple.* Code \LaTeX pour deux choses en-dessous : $\lim\limits_{\substack{x \rightarrow -2 \\ x>-2}} f(x)$

> Remarque.
> - $f$ est dérivable en $a$ $\Rightarrow$ $f$ est continue en $a$
> *Exemple.* Une fonction non continue en $0$ donc non dérivable en $0$
> ![Schémas]

## 1) Interprétation géométrique

![Schéma taux d'accroissement / tangente]

$f'(a) =$ coefficient directeur de la tangente au graphe en $a$

### a) Équation de la tangente

Si $(x, y) \in$ Tangente,
$$
{y - f(a) \over x - a} = f'(a) \Rightarrow \boxed{y = f'(a)(x - a) + f(a)}
$$

## 2) Calcul de dérivées

### a) Dérivées des fonctions usuelles

$f(x)$                   | $f'(x)$
-------------------------|------------------------
$b$                      | $0$
$ax$                     | $a$
$n \in \mathbb{Z},\ x^n$ | $nx^{n - 1}$
$e^x$                    | $e^x$
$ln(x)$                  | $1 \over x$
$cos(x)$                 | $-sin(x)$
$sin(x)$                 | $cos(x)$
$x^\alpha$               | $\alpha x^{\alpha - 1}$

\begin{figure}
\centering
\caption{Sens des dérivées et primitives de sin et cos}
\includegraphics[]{res/sens-derivees-sin-cos.jpg}
\end{figure}

*Exemple.* $\begin{array}{c @{} c} F: [0,+ \infty [\rightarrow \mathbb{R}\\ x \mapsto \sqrt{x} \\ \end{array}$  non dérivable en 0

### b) Formules de somme, produit, quotient

Soient $u,v$ deux fonctions dérivables :

$$
(u + v)' = u' + v'$$$$
(\lambda u)' = \lambda u' (\lambda \in \mathbb{R})$$$$
(uv)' = u'v + uv'$$$$
\Big({u \over v}\Big)' = {u-v - uv' \over v^2}
$$

*Exemple.* $\big({1 \over u}\big)' = {-u' \over u^2}$

### c) Composée de fonctions

Soient $u,v$ deux fonctions : $u \circ v(x) = u(v(x))$

*Exemple.*

$$u : \begin{array}{c @{} c} \mathbb{R} \rightarrow \mathbb{R}\\ x \mapsto e^x \\ \end{array}$$

$$v : \begin{array}{c @{} c} \mathbb{R} \rightarrow \mathbb{R}\\ x \mapsto x^2 + 1 \\ \end{array}$$

$$f = u \circ v(x) = u(v(x)) = u(x^2 + 1) = e^{x^2 + 1}$$

**Dérivée d'une composée** : $(u \circ v)' = (u' \circ v)v'(x)$

*Exemple.* $f'(x) = (u' \circ v)(x)v'(x) = e^{v(x)}v'(x) = (e^{x^2+1})(2x) = 2xe^{x^2+1}$, sachant que $u'(x) = e^x$

\pagebreak

**Applications.**

Forme 1  |   Forme 2
:-------:|:-----------:
$(u^n)'$ | $nu^{n-1}u'$
 $e^u$   |   $u'e^u$
$ln(u)$  | $u' \over u$
$cos(u)$ | $-sin(u)u'$
$sin(u)$ |  $cos(u)u'$

### d) Théorèmes importants

**Théorème** (lien dérivée et variation). Soit $f : I \Rightarrow \mathbb{R}$ dérivable
- $\forall x \in I, f'(x) > 0 \Leftrightarrow F$ est strictement **croissante** sur $I$
- $\forall x \in I, f'(x) < 0 \Leftrightarrow F$ est strictement **décroissante** sur $I$
- $\forall x \in I, f'(x) = 0 \Leftrightarrow F$ est **constante** sur $I$

*Exemple.* $f(x) = (x^3 + 1)^7 = u \circ v(x)$ avec $u(x) = x^7,\ u'(x) = 7x^6,\ v(x) = x^3 + 1,\ v'(x) = 3x^2$
Alors $f'(x) = u'(v(x))v'(x) = 7(x^3 + 1)3x^2 = \stackrel{> 0}{21x^2} \times \stackrel{> 0}{(x^3 + 1)^6}$

![tableau de variation]

**Théorème (TVI ou Théorème des Valeurs Intermédiaires).**
Soit $f : [a, b] \Rightarrow \mathbb{R}$ continue.
Soit $y$ compris entre $f(a)$ et $f(b)$
Alors $\exists x \in [a, b]\ tq\ f(x) = y$

*Exemple.*

$$
x^7 + x + \pi$$$$
f'(x) = 7x^6 + 1 > 0$$
Donc $f$ strictement croissante

![tableau de variation]

Par le TVI, $\exists x_0 \in \mathbb{R}$ tq $x_{0}^7 + x_0 + \pi = 0$ et comme $f$ est strictement croissante $x_0$ est unique

**Théorème (Rolle).**

$f : [a,b] \rightarrow \mathbb{R}$
- $f$ continue sur $[a,b]$
- $f$ dérivable sur $]a,b[$
- $f(a) = f(b)$

Alors $\exists c \in ]a,b[$ tq $f'(c) = 0$

![Graphe d'une fonction qui respecte le théorème de Rolle]

**Théorème (TAF ou Théorème des Accroissements Finis).**

$f : [a,b] \rightarrow \mathbb{R}$
- $f$ continue sur $[a,b]$
- $f$ dérivable sur $]a,b[$

Alors $\exists c \in ]a,b[$ tq $f'(c) = {f(b) - f(a) \over b - a}$

![Graphe d'une fonction qui respecte le TAF]


**Inegalité des accroissements finis**

$f : [a,b] \rightarrow \mathbb{R}$
- $f$ continue sur $[a,b]$
- $f$ dérivable sur $]a,b[$
- $\exists m, M\ tq\ m \leq f'(x) \leq M\ \forall x \in [a,b]$

Alors $m(b-a) \leq f(b) - f(a) \leq M(b-a)$

\pagebreak

# C) Développements limités

## 1) Formule de Taylor Young

Soit $f \in C^n (I, \mathbb{R})$ (c'est-à-dire $n$ fois dérivable et $F^{(n)}$ continue) et $a \in I$,

Alors $f(a+h) = f(a) + hf'(a) + {h^2 \over 2!}f''(a) + {h^3 \over 3!}f^{(3)}(a) + \dots + {h^n \over n!}f^{(n)}(a) + \stackrel{=h^n\epsilon(h)}{o(h^n)}$

> Remarques.
> - $o(h^n)$ : négligeable devant $h^n$ quand $h \rightarrow 0$
> - $\epsilon(h)$ : fonction qui tend vers $0$ quand $h \rightarrow 0$

*Exemple.* $f(x) = e^x$ et en 0 (pour toutes ces équations) :

$$
e^x = 1 + x + {x^2 \over 2!} + {x^3 \over 3!} + \dots + {x^n \over n!} + o(X^n)$$$$
cos(x) = 1 - {x^2 \over 2!} + {x^4 \over 4!} + \dots + {(-1)^n \over (2n)!}x^{2n} + o(x^{2n})$$$$
sin(x) = x - {x^3 \over 3!} + {x^5 \over 5!} - \dots + {(-1)^nx^{2n + 1} \over (2n + 1)!} + o(x^{2n + 1})
$$

## 2) Développements limités classiques en 0

$$
{1 \over 1 - x} = 1 + x + x^2 + \dots + x^n + o(x^n)$$$$
{1 \over 1 + x} = 1 - x + x^2 - x^3 + \dots (-1)^nx^n + o(x^n)$$$$
ln(1+x) = x - {x^2 \over 2} + {x^3 \over 3} - \dots + (-1)^{n+1}{x^n \over n} + o(x^n)$$$$
(1 + x)^\alpha = 1 + \alpha x + {\alpha (\alpha - 1) \over 2!}x^2 + {\alpha (\alpha - 1)(\alpha - 2) \over 3!}x^3 + \dots + {\alpha (\alpha - 1)(\alpha - 2) \dots (\alpha - n + 1) \over n!}x^n
$$

> Remarques. On peut passer d'une équation à l'autre :
> - (1) à (2) : en faisant $x \mapsto -x$
> - (2) à (3) : en faisant la dérivée de (2)
> - (4) à (1) et (2) : cas particuliers de (4)

*Exemple.*

Calculer la limite $\lim\limits_{x \rightarrow 0}{e^x - 1 \over x}$
$$
e^x = 1 + x + x^2 + o(x^2)$$$$
{e^x - 1 \over x} = {1 + x + x^2 + o(x^2) - 1 \over x}$$$$
= 1 + x + o(x) \underset{x \rightarrow 0}{\rightarrow} 1
$$

Donc $\lim\limits_{x \rightarrow 0}{e^x - 1 \over x} = 1$

\pagebreak

*Exemple.* Développement limité de $f(x) =  {1 \over 2 - e^{x^2}}$ en $0$ :
$$
e^u = 1 + u + {u^2 \over 2} + o(u^2)
$$

Donc $e^{x^2} = 1 + x^2 + {x^4 \over 2} + o(x^4)$

$$
{1 \over 2 - e^{x^2}} = {1 \over 2 - (1 + x^2 + {x^4 \over 2} + o(x^4))}$$$$
= {1 \over 1 - (x^2 + {x^4 \over 2} + o(x^4))} \underset{x \rightarrow 0}{\rightarrow} 0$$$$
{1 \over 1 - v}  = 1 + v + v^2 + o(v^2)
$$

Donc

$$
{1 \over 2 - e^{x^2}} = 1 + \big(x^2 + {x^4 \over 2} + o(x^4)\big) + \big(x^2 + {x^4 \over 2} + o(x^4)\big)^2 + \stackrel{o(x^4)}{o\Big(\big(x^2 + {x^4 \over 2}\big)^2\Big)}$$$$
= 1 + x^2 + \Big({1\over2}\Big) x^4 + o(x^4)$$$$
= 1 + x^2 + {3\over4}x^4 + o(x^4)
$$

*Exemple.* Développement limité en 0 de $ln(1 + x^2) \over x^3 + x^2$

$$
= ln(1 + x^2) + {1 \over x} + {1 \over 1 + x}$$$$
ln(1 + u) = u - {u^2 \over 2} + o(u^2)$$$$
\text{Donc}\ ln(1 + x^2) = x^2 - {x^4 \over 2} + o(x^4)$$$$
{1 \over 1  + x} = 1 - x + x^2 - x^3 + x^4 + o(x^4)$$

$$
f(x) = \big(x^2 - {x^4 \over 2} + o(x^4)\big){1 \over x}\big(1-x+x^2-x^3+x^4+o(x^4)\big)$$$$
=(x - {x^3 \over 2} + o(x^3))(1 - x + x^2 - x^3 + x^4 + o(x^4))$$$$
= x - x^2 \big({-1 \over 2} + 1\big)x^3 +o(x^3)$$$$
= x - x^2 + {1 \over 2}x^3 + o(x^3)
$$

En particulier, $\lim\limits_{x \rightarrow 0}f(x) = 0$

## 3) Quelques dl en plus

- Calculer $\lim\limits_{x \rightarrow 0}{e^{x^2} - cos(x) \over x^2}$
  $$
  e^u = 1 + u + {u^2 \ 2} + o (u²)$$$$
  \text{Donc}\ e^{x^2} = 1 + x^2 + {x^4  over 2} + o(x^4)$$$$
  \text{Et}\ cos(x) = 1 - {x^2 \over 2} + {x^4 \over 24} + o(x^4)$$$$
  \text{Ainsi}\ e^{x^2} - cos(x) = {3 \over 2}x^2 + ({1 \over 2} - {1 \over 24})x^4 + o(x^4)$$$$
  \text{Donc}\ {e^{x^2} - cos(x) \over x^2} = {3 \over 2} + {11 \over 24}x^2 + o(x^2)$$$$
  \text{Donc}\ {e^{x^2} - cos{x} \over x^2} \underset{x \rightarrow 0}{\rightarrow} {3 \over 2}$$

- Donner le dl en $1$ à l'ordre $3$ de $f(x) = \sqrt{2e - e^x}$

$$
f(1+h) = \sqrt{2e+e^{1+h}} = \sqrt{2e+ee^h}$$$$
\text{Or}\ e^h = 1+h+{h^2 \over 2}+{h^3 \over 6}+o(h^3)$$$$
\text{Donc}\ f(1+h) \underset{h \rightarrow 0}{=} \sqrt{e}\sqrt{2+1+h+{h^2 \over 2}+{h^3 \over 6}+o(h^3)} = \sqrt{e}\sqrt{3+h+{h^2 \over 2}+{h^3 \over 6}+o(h^3)}$$$$
= \sqrt{e}\sqrt{3}\sqrt{1+{h \over 3}+{h^2 \over 6}+{h^3 \over 18}+o(h^3)}$$$$
\text{Or}\ \sqrt{1+u} \underset{u \rightarrow 0}{=} 1 + {1 \over 2}u + {\big({1 \over 2}\big)\big(-{1 \over 2}\big) \over 2}u^2 + {\big({1 \over 2}\big)\big(-{1 \over 2}\big)\big(-{3 \over 2}\big) \over 2}u^3 + o(u^3) = 1 + {1 \over 2}u - {1 \over 8}u^2 + {1 \over 16}u^3 + o(u^3)$$$$
\text{Donc}\ f(1 + h) = \sqrt{3e}(1 + {1 \over 2}({h \over 3} + {h^2 \over 6} + {h^3 \over 18}) - {1 \over 8} ({h \over 3} + {h^2 \over 6} + {h^3 \over 18})^2 + {1 \over 16}({h \over 3} + {h^2 \over 6} + {h^3 \over 18})^3 + o(h^3)$$$$
= \sqrt{3e}(1 + {1 \over 2}h + ({1 \over 12} - {1 \over 24})h^2 + ({1 \over 36} - {2 \over 8} - {1 \over 18} + {1 \over 16 \times 9})h^3) = \sqrt{3e}(1 + {1 \over 2}h + {1 \over 24}h^2 + {3 \over 144}h^3)$$$$
\text{Et enfin}\ f(1 + h) = \sqrt{3e} + {\sqrt{3e} \over 2}h + {\sqrt{3e} \over 24}h^2 + {3 \sqrt{3e} \over 144}h^3 + o(h^3)
$$

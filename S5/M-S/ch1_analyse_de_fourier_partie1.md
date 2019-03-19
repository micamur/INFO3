% Chapitre 1 - Analyse de Fourier
% Rémi MOLINIER (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 30 Novembre 2018

# Séries de Fourier

## 1. Fonction périodiques

**Définition.** Une fonction $F : \mathbb{R} \rightarrow  \mathbb{R}$ est T-periodique si

$$
\forall x \in \mathbb{R},\ f(x+T) = f(x)
$$

*Exemples.*

- $t \mapsto \cos(t)$ et $t \mapsto \sin(t)$ sont $2\pi$-périodiques
 
- $t \mapsto \tan(t)$ est $\pi$-périodique

- $t \mapsto \cos({2 \pi \over T}t)$ est $T$-périodique (preuve en développant $\cos({2\pi \over T}(t+T))$)

> *Remarque.* Si $F$ est $T$-périodique alors $F$ est $kT$-périodique $\forall k \in \mathbb{N}^*$

*Exercice.* Tracer le graphe de la fonction $f$ paire puis de la fonction $g$ impaire, toutes deux telles qu'elles soient 1-périodiques tq $f(t) = g(t) = t,\ \forall\ t \in \big[0, {1 \over 2}\big]$

> *Remarque.*
> 
> - Pour définir une fonction $T$-périodique il suddit de la donner sur un intervalle de longueur T.
> 
> - Si de plus on a des symétries (paire, impaire, etc.) il suffit de la définir surun plus petit intervalle (typiquement, si f paire ou impaire, $\big[0,{T \over 2}\big]$ suffit)

*Exemple.*
$t \mapsto e^{{2i\pi \over T}t}$ es une fonction $T$-périodique à valeurs dans $\mathbb{C}$

**Définition.** Un polynôme trigonometrique c'est une fonction $f$ tq
$$
\begin{array}{lcl}
f(x) & = & \sum\limits_{k=-N}^{N} C_k \underset{T \text{-périodique}}{e^{{2i\pi \over T}kx}}\\
 & = & a_0 + \sum\limits_{i=1}^{N}\ (a_k \cos\big({2 \pi  \over T}kx\big) + b_k \sin\big({2 \pi \over T}kx\big))\\
\end{array}
$$

On passe d'une forme à l'autre en utilisant les formules d'Euler

$$
\cos\Big({2 \pi \over T}kx\Big) = {e^{{2 \pi \over T}ikx} + e^{{2 \pi \over T}i(-k)x} \over 2 }
$$
$$
\sin\Big({2 \pi \over T}kx\Big) = {e^{{2 \pi \over T}ikx} + e^{{2 \pi \over T}i(-k)x} \over 2i}
$$
$$
\text{Avec : } a_0 = C_0,\; C_k = {1 \over 2}(a_k - ib_ k) \text{ et } C_{-k} = {1 \over 2}(a_k + ib_k)
$$

> *Remarque.* Si $f$ est $T$-périodique, $\forall a \in \mathbb{R},$
> $$
> \begin{array}{lcl}
> \int_{0}^{T} f(t)dt & = & \int_{a}^{a+T} f(t)dt \text{ mais aussi }\\
> & = & \int_{-T/2}^{T/2} f(t)dt \text{ en particulier }
> \end{array}
> $$

## 2. Coefficients de Fourier

**Définition.** Soit $f$, $T$-périodique : $\forall n \in \mathbb{Z}$
$$
\boxed{C_n(f) = {1 \over T} \int_{0}^{T} f(t)e^{{-2 \pi \over T}int} dt}
$$

> *Remarque.* Comme $f$ est $T$-périodique et $t \mapsto e^{{-2 \pi \over T}int}$ aussi on peut changer le domaine d'integraiton par $[{-\pi \over 2}, {\pi \over 2}]$ ou autre chose de plus commode

**Définition.** La série de Fourier de $f$ est alors
$$
\boxed{S_f(t) = \sum\limits_{n \in \mathbb{Z}} C_n(f)e^{{2 \pi \over T}int}}
$$

> *Remarque.* Pourquoi cette définition ?
> Si $f(t) = \sum\limits_{k=-N}^{N} C_n e^{{2 \pi \over T}ikt}$
> $$
> \begin{array}{lcl}
> C_n(f) & = & {1 \over T}\int_{0}^{T} \big(\sum\limits_{k=-N}^{N} C_k e^{{2 \pi \over T}ikt}\big)e^{{-2 \pi \over T}int} dt\\
> & = & \sum\limits_{k=-N}^{N} {C_k \over T} \underset{=\ I_{n,k}}{\Big(\int_{0}^{T} e^{{2 \pi \over T}i(k - n)t} dt\Big)}\\
> \end{array}
> $$
> - si $k = n$ :
>   $$
>   \begin{array}{lcl}
>   I_{n, k} & = & \int_{0}^{T} 1 dt\\
>    & = & T\\
>   \end{array}
>   $$
> - si $k \ne n$
>   $$
>   \begin{array}{lcl}
>   I_{n, k} & = & \int_{0}^{T} e^{{2 \pi \over T}i(k-n)t} dt\\
>   & = & \Big[ {e^{{2 \pi \over T}i(k-n)t} \over {2 \pi \over T}i (k - n) } \Big]^T_0\\
>   & = & 0\\
>   \end{array}
>   $$
> Donc $C_n(f) = {C_n \over T}T = C_n$. Donc $S_f(t) = f(t)$

*Exemple.* $f$ est $2\pi$-périodique paire tq $f(t) = t$ si $t \in [0, \pi]$

Soit $n \in \mathbb{Z}$,
$$
\begin{array}{lcl}
C_n(f) & = & {1 \over 2 \pi} \int_{0}^{2 \pi} \underset{\text{n'est pas pair !}}{f(t) e ^{-int}} dt\\
 & = & {1 \over 2 \pi} \int_{-\pi}^{\pi} f(t) e ^{-int} dt \text{ (on peut décaler comme} f \text{ est } 2 \pi \text{-périodique)}\\
 & = & {1 \over 2 \pi} \big(\int_{- \pi}^{0} -t e ^{-int} dt + \int_{0}^{\pi} t e^{-int}dt\big) \text{ (on peut découper comme } f \text{ est paire)}\\
 & = & {1 \over 2 \pi} \Big[([-t {e^{-int} \over -in}]^0_{-\pi} - \int_{- \pi}^{0} e^{-int} dt) + ([{t e^{-int} \over int}]^{\pi}_0 + \int_{0}^{\pi} {e^{-int} \over in} dt) \Big] \text{ (IPP)}\\
 & = & {1 \over 2\pi}\bigg({\pi \over in} e^{in\pi} - {1 \over in}\big[{e^{-int} \over -in}\big]_{-\pi}^0 + {-\pi \over in} e^{-in\pi} + {1 \over in}\big[{e^{-int} \over -in}\big]_{0}^{\pi} \bigg) \text{ (or } e^{-in\pi} = e^{in\pi} \text{)}\\
 & = & {1 \over 2\pi}\bigg({1 \over in} \Big(-\big[{e^{-int} \over -in}\big]_{-\pi}^0 + \big[{e^{-int} \over -in}\big]_{0}^{\pi}\Big) \bigg) \text{ (on peut donc simplifier) } \\
 & = & {1 \over 2 \pi i n} \Big({(-1)^n \over -in} - {1 \over -in} - ({1 \over -in} - {(-1)^n \over -in})\Big) \\
 & = & {1 \over 2 \pi i n} \big({2 \over in}\big) \\
 & = & {-1 \over \pi n^2}
\end{array}
$$

Donc
$\boxed{C_n(f) = {2((-1)^n - 1) \over \pi n^2}}$ pour $n \in \mathbb{Z}^*$

Et
$C_0(f) = {1 \over 2 \pi} \underset{=\ \pi^2}{\int_{- \pi}^{\pi} f(t) dt} = \boxed{{\pi \over 2}}$

Donc
$\boxed{S_f(t) = {\pi \over 2} + \sum\limits_{n \in \mathbb{Z}^*} {2((-1)^n - 1) e^{int} \over \pi n^2}} = {\pi \over 2} - \underset{(n\ =\ 2k+1)}{\sum\limits_{k \in \mathbb{Z}}{4 \over \pi (2k + 1)^2}e^{(2k + 1)it}}$

> *Remarque.* $(-1)^n - 1 = 0$ (si $n$ pair) ou $-2$ (si $n$ impair)

> *Remarque.* $\sum\limits_{n \in \mathbb{Z}} C_n(f)e^{i {2 \pi \over T}nt} = \lim_{N \to + \infty} (\sum\limits_{n=-N}^{N} C_n(f)e^{i {2 \pi \over T}nt})$

## 3. Premières propriétés

**Propriétés.**

- $C_n(f+g) = C_n(f) + C_n(g)$
  
- $C_n(\lambda f) = \lambda C_n(f)$
  
- $C_n(f') = {2 \pi i n \over T} C_n(f)$

**Théorème.** $C_n(f) \underset{n \rightarrow + \infty}\rightarrow 0$ (si $f$ continue par morceaux)

## 4. Coefficients réels

$$
\begin{array}{lcl}
S_f(t) & = & \sum\limits_{n \in \mathbb{Z}} C_n e^{-i {2 \pi \over T} nt} \\
 & = & a_0(f) + \sum\limits_{n \geq 1} (a_n(f)\cos({2 \pi \over T}nt) + b_n(f) \sin({2 \pi \over T}nt)) \\
\end{array}
$$

**Proposition.** Soit $n \in \mathbb{N}^*$ :

$$
\begin{array}{rcl}
a_0(f) & = & C_0(f) \\
a_n(f) & = & c_n(f) + c_{-n}(f) \\
b_n(f) & = & i(C_n(f) - C{_n}(f)) \\
c_n(f) & = & {1 \over 2} (a_n(f) - ib_n(f)) \\
c_{-n}(f) & = & {1 \over 2}(a_n(f) + ib_n(f))
\end{array}
$$

**Formules.**
$$\boxed{
\begin{array}{rcl}
a_0(f) & = & {1 \over T} \int_{0}^{T} f(t)dt \\
a_n(f) & = & {2 \over T} \int_{0}^{T} f(t)\cos({2 \pi \over T}nt)\; dt\\
b_n(f) & = & {2 \over T} \int_{0}^{T} f(t) \sin( {2 \pi \over T}nt)\; dt\\
\end{array}}
$$

> *Remarque.*
> 
> - Si $f$ paire, $b_n(f) = {2 \over T} \int_{-\pi/2}^{\pi/2} \underset{\text{(impair)}}{f(t) \sin({2 \pi \over T} nt)} dt = 0$
> 
> - Si $f$ impaire, $a_n(f) = {2 \over T} \int_{-\pi/2}^{\pi/2} \underset{\text{(impair)}}{f(t) \cos({2 \pi \over T} nt)} dt = 0$

\pagebreak

> *Remarque.*
> 
> - pair $\times$ pair $\rightarrow$ pair
> 
> - impair $\times$ impair $\rightarrow$ pair
> 
> - pair $\times$ impair $\rightarrow$ impair
> 
> - impair $\times$ pair $\rightarrow$ impair

*Exemple.*
$f(t) = t$ sur $[0, \pi]$, paire et $2 \pi$-périodique

$$
a_0(f) = {1 \over 2 \pi} \int_{0}^{2 \pi} f(t)\; dt = {\pi \over 2}
$$

Soit $n \ge 1$
$$
\begin{array}{lcl}
b_n(f) & = & 0 \text{ (car f paire)}\\
a_n(f) & = & {1 \over \pi} \int_{-\pi}^{\pi} f(t) \cos(nt)\; dt \\
& = & {2 \over \pi} \int_{0}^{\pi} t \cos(nt)\; dt \\
& = & {2 \over \pi} ([{t \sin(nt) \over n}]_0^{\pi} - \int_{0}^{\pi} {\sin(nt) \over n}\; dt)\\
& = & {-2 \over \pi} [{-\cos(nt) \over n^2}]^{\pi}_0 \\
& = & {2 \over \pi n^2} (\cos(n \pi) - \cos(0)) \\
& = & {2 \over \pi n^2} ((-1)^n - 1) \\
& = & \begin{cases}
{-4 \over \pi n^2} \text{ si n impair}\\
0 \text{ si n pair}\\
\end{cases}
\end{array}
$$

$$
\boxed{S_f(t) = {\pi \over 2} - \sum\limits_{k=1}^{+ \infty} {4 \over \pi (2k + 1)^2} cos((2k + 1)t)}
$$

*Exemple.*

  - Soit $f \mapsto 1 - {2x \over \pi}\; \forall t \in [0,\pi]$ une fonction paire $2\pi$ périodique. Ses coefficienfs de Fourier sont :

  $$
  \begin{array}{lcl}
  a_0(f) & = & {1 \over 2\pi} \int_{-\pi}^{\pi} f(x)dx\\
   & = & {1 \over \pi}\int_{0}^{\pi} (1 - {2x \over \pi}) dx \text{ (car paire)}\\
   & = & {1 \over \pi}\big[\cdots\big]_0^{\pi}\\
   & = & 0
  \end{array}
  $$

  Soit $n\ge 1$ comme $f$ f paire, $\forall n \in \mathbb{N}^*,b_n(f)=0$

  $$
  \begin{array}{lcl}
  a_n(f) & = & {1 \over \pi} \int_{-\pi}^{\pi} f(x)cos(nx)dx \text{ (car paire)}\\
   & = & {2 \over \pi} \int_{0}^{\pi} (1 - {2x \over \pi})cos(nx)dx\\
   & = & {2 \over \pi} \Big(\underset{=\; 0}{\big[(1 - {2x \over \pi}){sin(nx) \over n}\big]_{0}^{\pi}} + {2 \over \pi} \int_{0}^{\pi} {sin(nx) \over n} dx\Big)\\
   & = & {4 \over \pi^2n} \big[{-cos(nx) \over n}\big]_0^{\pi}\\
   & = & {4 \over \pi^2n^2} \big(1 - \underset{=(-1)^n}{cos(n\pi)}\big)\\
   & = & \boxed{{4 \over \pi^2n^2} (1-(-1)^n)}\\
   & = & 0 \text{ si n pair ou } {8 \over \pi^2n^2} \text{ sinon }
  \end{array}
  $$

  $$
  \boxed{S_f(x) \underset{(x=2k+1)}{=} {8 \over \pi^2} \sum\limits_{k=0}^{+\infty} {cos((2k+1)x) \over (2k+1)^2}}
  $$

## 5. Théorème de Parseval

**Théorème.** Soif $f$ continue par morceaux et $T$-périodique. La puissance moyenne du signal est

$$
{1 \over T} \int_{{-T \over 2}}^{{T \over 2}} |f(t)|^2 dt = \sum\limits_{n \in \mathbb{Z}} |C_n(f)|^2 = |a_0(f)|^2 + {1 \over 2} \sum\limits_{n \ge 1} |a_n(f)|^2 + |b_n(f)|^2
$$

### Applications

#### 1. Calcul du nombre d'harmonique nécessaire pour transmettre $X \%$ de la puissance du signal.

**Principe :**

1. On calcule $E = {1 \over T}\int_{-T/2}^{T/2} |f(t)|^2 dt$ (la puissance moyenne du signal)
   
2. On calcule $E_0 = |a_0(f)|^2$, $E_1 = |a_0(f)|^2 + |a_1(f)|^2 + |b_1(f)|^2$, $E_2 = |a_0|^2 + |a_1|^2 + |b_1|^2 + |a_2|^2 + |b_2|^2 + \dots$

  On s'arrête lorsque ${E_i \over E} \ge X \%$

*Exemple.*
$f$ pair $2\pi$-périodique tq $f(t) = 1 - {2t \over \pi}\; \forall t \in [0, \pi]$
$$
\begin{array}{lcl}
E & = & {1 \over 2\pi} \int_{-\pi}^{\pi} |f(t)|^2 dt \\
 & = & {1 \over \pi} \int_{0}^{\pi} (1 - {2t \over \pi})^2dt \\
& = & {1 \over \pi} \big[{-\pi \over 6} (1 - {2t \over \pi})^3\big]_0^{\pi}\\
& = & {1 \over 6} (1+1)\\
& = & {1 \over 3}\\
\end{array}
$$

$$
\begin{array}{lcl}
E_0 & = & 0\\
E_1 & = & {|a_1|² \over 2} = {1 \over 2}\big({8 \over \pi^2}\big)^2 \approx 0,32\\
{E_1 \over E} & = & {3 \over 2} ({8 \over \pi^2})^2 \approx 0,98\\
\end{array}
$$

Donc avec $1$ harmonqiue on transfère $98 \%$ de la puissance du signal

#### 2. Calcul de séries

*Exemple.*
$f$ pair $2\pi$-périodique tq $f(t) = 1 - {2t \over \pi}\; \forall t \in [0, \pi]$, on a :

$$
{1 \over 2\pi} \int_{-\pi}^{\pi} f(t)dt = {1 \over 2} \sum\limits_{k \ge 0} \Big({-f \over \pi^2 (2k + 1)^2}\Big)^2
$$

Donc ${1 \over 3} = {2^5 \over \pi^4} \sum\limits_{k \ge 0} {1 \over (2k + 1)^4}$
et $\boxed{\sum\limits_{k \ge 0} {1 \over (2k + 1)^4} = {\pi^4 \over 96}}$

$$
\begin{array}{lcl}
\text{Soit }S & = & \sum\limits_{n \ge 1} {1 \over n^4} \\
 & = & \underset{={1 \over 2^4}\sum\limits_{k\ge1} {1 \over k^4} = S}{\sum\limits_{k \ge 1} {1 \over (2k)^4}} + \underset{={\pi^4 \over 96}}{\sum\limits_{k \ge 0} {1 \over (2k + 1)^4}} \\
 & = & {1 \over 16}S + {\pi^4 \over 96}\\
 & = & {16 \over 15} {\pi^4 \over 96} \\
 & = & {\pi^4 \over 90}
\end{array}
$$

$$
\text{ Donc : }\boxed{\sum\limits_{n \ge 1} {1 \over n^4} = {pi^4 \over 90} }
$$

## 6. Convergence des séries de Fourier

**Théorème de convergence normale.**

Soit $f$ une fonction $T$ périodique, on suppose que :
  
- $f$ continue
- $f\; C^1$ par morceaux
  
Alors
$$
S_{f, N} (t) = \sum\limits_{n=-N}^{N} C_n(f)e^{i {2 \pi \over T}nt}
$$
converge uniformément (et même normalement) vers $f$.

_Rappels_.

- $(f_n)_{n \in \mathbb{N}}$ CVU vers $f$,

  $$\forall \epsilon > 0, \exists N \ge 0 \text{ tq } \forall n \ge \mathbb{N}, \forall t \in \mathbb{R}, |f(t) - f_n(t)| \le \epsilon$$

  ![dessin d'une CVU]()

- $f\; C^1$ par morceaux, si $\exists (t_n)_{n \in \mathbb{Z}}$ strictement croissante tq $f\; C^1$ sur $]t_n, t_{n + 1}[\; \forall n$ et $f'(t)$ à une limite finie quand $t \rightarrow t_n^+$ et $t \rightarrow t_n^-$

**Théorème de Dirichlet.**

$f$ continue par morceaux et $T$-périodique. On suppose que en tout point $t$ on a une limite à gauche $f(t^-)$ et une limite à droite $f(t^+)$

Alors $S_{f, N}(t) = \sum\limits_{i=-N}^{N} C_n(f)e^{{-2i\pi \over T}nt} \xrightarrow[N \to +\infty]{} {f(t^-)+f(t^+) \over 2}$

> *Remarque.*
> - Si $f$ continue en $t$ alors $f(t^-) = f(t^+) = f(t)$ donc ${f(t^-)+f(t^+) \over 2} = f(t)$
>   ![Exemple]()


**Phenomène de Gibbs.** Quand le signal n'est pas continu, on n'a pas CVU de la série de Fourier : en chaque discontinuité on a des pics qui apparaissent.

![Schéma d'une fonction discontinue]

On peut aussi utiliser Dirichlet pour du calcul de série.

*Exemple.*
$f$ pair $2\pi$-périodique tq $f(t) = 1 - {2t \over \pi}\; \forall t \in [0, \pi]$. En appliquant Dirichlet et en prenant $t = 0$ on obtient la valeur de $\boxed{\sum\limits_{k \ge 0} {1 \over (2k + 1)^2} = {\pi^2 \over 8} }$
et ensuite avec le même jeu que tout à l'heure, on obtient $\boxed{\sum\limits_{n\ge 1} {1 \over n^2} = {\pi^2 \over 6}}$


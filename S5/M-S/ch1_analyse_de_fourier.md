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
> - Pour définir une fonction $T$-périodique il suddit de la donner sur un intervalle de longueur T.
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
> - Si $f$ paire, $b_n(f) = {2 \over T} \int_{-\pi/2}^{\pi/2} \underset{\text{(impair)}}{f(t) \sin({2 \pi \over T} nt)} dt = 0$
> - Si $f$ impaire, $a_n(f) = {2 \over T} \int_{-\pi/2}^{\pi/2} \underset{\text{(impair)}}{f(t) \cos({2 \pi \over T} nt)} dt = 0$

> *Remarque.*
> - pair $\times$ pair $\rightarrow$ pair
> - impair $\times$ impair $\rightarrow$ pair
> - pair $\times$ impair $\rightarrow$ impair
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
- Soit $f$ une fonction $T$ périodique, on suppose que :
  - $f$ continue
  - $f\; C^1$ par morceaux

- Alors
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

# Transformée de Fourier

## 1. Definition

**Définition.** Soit $f$ intégrable on définit alors la $Tf$ de $f$ par

$$
\forall \xi,\; \stackrel{\wedge}{f}(\xi) = \int_{\mathbb{R}} f(t)e^{-it\xi} dt
$$

> **Attention.** Il existe plusieurs conventions :
> $$
> \boxed{\stackrel{\wedge}{f}(\xi) = \int_{\mathbb{R}} f(t)e^{-it\xi}}
> $$
> $$
> \stackrel{\wedge}{f}(\xi) = \int_{\mathbb{R}} f(t)e^{-2i\pi t y}
> $$

> *Remarque.* $\stackrel{\wedge}{f}(\xi)$ est bien définie $\forall\; \xi \in \mathbb{R}$ car $|f(t)e^{-it\xi}| = |f(t)|$ et $f$ intégrable. On a même $|\stackrel{\wedge}{f}(\xi)| \le \int_{\mathbb{R}} |f(t)e^{-it\xi}| dt = \int_{\mathbb{R}} |f(t)| dt$

> *Exemple.* $f(x) = \begin{cases}
>1 \text{ si } x \in [-1,1]\\
>0 \text{ sinon}\\
>\end{cases}$
>
> $$
> \begin{array}{lcl}
> \stackrel{\wedge}{f}(\xi) & = & \int_{\mathbb{R}} f(t)e^{-it\xi}\\
>  & = & {2 \over \xi} {e^{i \xi} - e^{-i \xi} \over 2i}\\
>  & = & {2 sin(\xi) \over \xi}\\
>  & = & 2 sinc(\xi)
> \end{array}$$
>
> où $\underset{\text{cardinal}}{sinc}(x) = {sin(x) \over x}$
>
> $$|f(t)e^{-it\xi}| = |f(t)|\underset{=\; 1}{|e^{-i \stackrel{\in \mathbb{R}}{t\xi}}|} = |f(t)|$$

## 2. Propriétés

- **Linéarité.** $\alpha, \beta \in \mathbb{C}$$ et $f, g$ intégrable $\stackrel{\wedge}{\alpha f + \beta g} = \alpha \stackrel{\wedge}{f} + \beta \stackrel{\wedge}{g}$

- **Retard temportel.** Soit $\tau \in \mathbb{R}$, si $g(t) = f(t  - \tau) \forall t \in \mathbb{R}$ :

  $$
  \stackrel{\wedge}{f}(\xi) = e^{-i\tau\xi}\stackrel{\wedge}{f}(\xi)
  $$

  **IMPORTANT : Preuve.**
  $$\begin{array}{lcl}
  \stackrel{\wedge}{g}(\xi) & = & \int_{\mathbb{R}} f(\underset{u}{t-\tau})e^{-it\xi} dt \text{, donc } t=u+\tau \text{ et } du=dt\\
   & = & \int_{\mathbb{R}} f(u) e^{-i(u+\tau)\xi} du\\
   & = & e^{-i\tau\xi} \stackrel{\wedge}{f}(\xi)\; \blacksquare
  \end{array}$$

  **Application.**
  $g(t) = \begin{cases}
  1\; si\; t \in [2, 4]\\
  0\; sinon\\
  \end{cases}$

  Ici $g(t) = f(t - 3)$ où $f(t) = \begin{cases}
  1\; si\; t \in [-1, 1]\\
  0\; sinon\\
  \end{cases}$

  $f(t - 3) = 0 \Leftrightarrow -1 \le t - 3 \le 1 \Leftrightarrow 2 \le t \le 4$

  Donc

  $$
  \stackrel{\wedge}{g} = e^{-3i \xi} \stackrel{\wedge}{f}(\xi) = 2e^{-3i \xi} sinc(\xi)
  $$

*Exemple.* $f : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & \left\{\begin{array}{lcl}
t+1 & \text{ si } & t \in [-1,0] \\
1-t & \text{ si } & t \in [-1,0] \\
0 & \text{ sinon }\\
\end{array}\right.\end{array}\right.$


Soit $\xi \in \mathbb{R}$
$$
\begin{array}{lcl}
 \stackrel{\wedge}{f} & = & \int_{\mathbb{R}} f(t)e^{it \xi}\\
 & = & \int_{-1}^0 (t + 1)e^{i t \xi} dt + \int_0^{1} (1 - t)e^{-it \xi} dt\\
 & = & [(t + 1) {e^{it\xi} \over -i \xi}]_{-1}^0 + {1 \over i \xi} \int_{-1}^0e^{-it \xi} dt + [(1 - t) {e^{-it\xi} \over -i \xi}]_0^1 - \int_0^1 {e^{it \xi} \over i \xi} dt\\
 & = & -{1 \over i\xi} + {1 \over i\xi}\big[{e^{-it\xi} \over -i\xi}\big]_{-1}^0 +{1 \over i\xi} - \big[{e^{-it\xi} \over -i\xi}\big]_{0}^{-1}\\
 & = & {1 \over (i\xi)^2}\big(e^{i\xi}-1+e^{-i\xi}-1\big)\\
 & = &\boxed{{1 \over (i\xi)^2}\big(e^{i\xi}+e^{-i\xi}-2\big)}\\
\end{array}
$$

- **Dilatation.**
  Soit $b > 0$.
  Si $\forall t \in \mathbb{R}$, $g(t) = f(bt)$ :
  $$
  \stackrel{\wedge}{g}(\xi) = {1 \over b}\stackrel{\wedge}{f}\bigg({\xi \over b}\bigg)
  $$

  **Preuve.**
  $$
  \begin{array}{lcl}
  \stackrel{\wedge}{g}(\xi) & = & \int_{\mathbb{R}} g(t)e^{-it\xi} dt\\
  & = & \int_{\mathbb{R}} f(bt)e^{-it\xi} dt\\
  \end{array}
  $$

  Prenons $u = bt \Leftrightarrow t = {u \over b}$ et $du = bdt \Leftrightarrow dt = {du \over b}$.

  $$
  \begin{array}{lcl}
  \stackrel{\wedge}{g}(\xi) & = & \int_{\mathbb{R}} f(u)e^{-i({u \over b})\xi} {du \over b}\\
   & = & {1 \over b}\int_{\mathbb{R}} f(u)e^{-iu({\xi \over b})} du\\
   & = & {1 \over b}\stackrel{\wedge}{f}\big({\xi \over b}\big)\\
  \end{array}
  $$

  **Application.**

  Calculer la TF de $f : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & \begin{cases}
  1 \text{ si } t \in [-2, 1]\\
  0 \text{ sinon }\\
  \end{cases}\end{array}\right.$

  > *Rappel.* Pour $g : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t > & \mapsto & \left\{\begin{array}{lcl}
  > 1 & \text{ si } & t \in [-1,1]\\
  > 0 & \text{ sinon } & \\
  > \end{array}\right.\end{array}\right.$ on a :
  >
  > $$\stackrel{\wedge}{g}(\xi) = 2sinc(\xi)$$

  $$
  \forall t \in \mathbb{R}, f(t) = g\Big({t \over 2}\Big)
  $$

  _(car $-2 \le t \le 2 \Leftrightarrow -1 \le {t \over 2} \le 1$)_

  $$
  \begin{array}{lcl}
  \text{ Donc }\stackrel{\wedge}{f}(\xi) & = & 2 \stackrel{\wedge}{g}(2 \xi)\\
   & = & 4 sinc(2 \xi)\\
  \end{array}
  $$

  _Exemple._

  $f : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & \begin{cases}
  1 \text{ si } t \in [5, 6]\\
  0 \text{ sinon }\\
  \end{cases}\end{array}\right.$

  Soit $g : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & \begin{cases}
  1 \text{ si } [-1, 1]\\
  0 \text{ sinon }\\
  \end{cases}\end{array}\right.$

  $\forall t \in \mathbb{R}$,
  $$
  f(t) = g(2t - 11)
  $$

  _(car $5 \le t \le 6 \Leftrightarrow -{1 \over 2} \le {t - 11 \over 2} \le {1 \over 2} \Leftrightarrow -1 \le 2t - 11 \le 1$)_

  $$
  \text{ Donc }\boxed{\stackrel{\wedge}{f}(t) = {e^{-11 i {\xi \over 2}} \over 2} \stackrel{\wedge}{g}\Big({\xi \over 2}\Big)}
  $$

  En effet,
  $f(t) = h(t - {11 \over 2})$

  où $h(t) = \begin{cases}
  1 \text{ si } t \in [-1, 1]\\
  0 \text{ sinon }\\
  \end{cases}$

  $h(t) = g(2t)$

  Donc
  $$
  \stackrel{\wedge}{f}(\xi) = e^{-i {11 \over 2} \xi} \stackrel{\wedge}{h}(\xi)
  $$

  $$
  \stackrel{\wedge}{h}(\xi) = {1 \over 2} \stackrel{\wedge}{g}({\xi \over 2})
  $$

  $$
  \text{ Donc } \boxed{\stackrel{\wedge}{f}(\xi) = e^{-{11 \over 2}i\xi} sinc \big(\xi/2\big)}
  $$

- **Formules de dérivation.**

  1. $f$ intégrable et $\mathcal{C}^1$ telle que $f'$ intégrable :
     $$
     \stackrel{\wedge}{f}(\xi) = (i\xi)\stackrel{\wedge}{f}(\xi)
     $$

     > *Rappel.* ${1 \over t^\alpha} \text{ intégrable en 0 } \Leftrightarrow \alpha < 1$

     **Preuve.**

     $$
     \begin{array}{lcl}
     \stackrel{\wedge}{f'}(\xi) & = & \int f'(t)e^{-it \xi} dt\\
      & = & [f(t)e^{-it \xi}] - \int_{\mathbb{R}} f(t)(-i \xi) e^{i t \xi} dt\\
      & = & (i \xi) \int f(t)e^{i t \xi} dt \\
      & = & (i \xi) \stackrel{\wedge}{f}(\xi)\; \blacksquare
     \end{array}
     $$

  2. $f$ intégrable telle que $\stackrel{wedge}{f}$ est $\mathcal{C}^1$ :

    $$
    \boxed{\stackrel{\wedge}{f}'(\xi) = \stackrel{\wedge}{(-itf)}(\xi)}
    $$

     **Preuve.**
     $$
     \begin{array}{lcl}
      \stackrel{\wedge}{f'}(\xi) & = & {d \over d \xi} \int_{\mathbb{R}} f(t)e^{-it \xi}\\
      & = & \int_{\mathbb{R}} {d \over d \xi} (f(t)e^{-it \xi}) dt\\
      & = & \int_{\mathbb{R}} (-it) f(t) e^{-i t \xi} dt\\
      & = &\stackrel{\wedge}{(-it f(t))}(\xi)
     \end{array}
     $$

\pagebreak

  **Applications.**
  1. Application en équations différentielles
  2. Calcul de la TF (transformée de Fourier)

     $$
     f : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & e^{-t^2}\end{array}\right.
     $$

     $$
     \stackrel{\wedge}{f}(\xi) = \int_{\mathbb{R}} e^{-t^2}e^{-it\xi} dt
     $$

     $$
     \begin{array}{lcl}
     \stackrel{\wedge}{f}'(\xi) & = & \stackrel{\wedge}{(-i t f)}(\xi)\\
      & = & \int -it e^{-t^2}e^{-it \xi} dt\\
      & = & {i \over 2} \int_{\mathbb{R}} 2te^{-t^2}e^{-it \xi} dt\\
      & \underset{\text{IPP}}{=} & {i \over 2}(\stackrel{0}{[\nearrow]} + \int e^{-t^2} - i\xi e^{-it\xi}) dt\\
      & = & {i^2 \over 2}\xi \stackrel{\wedge}{f}(\xi)\\
     \end{array}
     $$

     Donc $\stackrel{\wedge}{f}$ est solution de $y' + {\xi \over 2}y = 0 (E)$

     Les solutions de $(E)$sont $t \mapsto C e^{{- \xi^2 \over 4}}$ avec $C \in \mathbb{R}$

     Cherchons $C$ dans notre cadre

     $$
     \begin{array}{lcl}
      \stackrel{\wedge}{f}(0) & = & \int_{\mathbb{R}} e^{-t^2} dt\\
      & = & \sqrt{\pi} \text{ (intégrale de Gauss)}\\
     \end{array}
     $$

     $$
     \text{Donc } \boxed{\stackrel{\wedge}{f}(\xi) = \sqrt{\pi} e^{-\xi^2/4}}
     $$

  **Application.** Soit $f$ intégrable et $\mathcal{C}^1$ telle que $f'$ intégrable,

  $$
  \text{Donc } \stackrel{\wedge}{f}(\xi) = {1 \over (i\xi)}\stackrel{\wedge}{f'}(\xi)
  $$

  $$
  \begin{array}{lcl}
  \text{De plus, }|\stackrel{\wedge}{f'}(\xi)| & \le & \int_{\mathbb{R}} |f'(t)e^{-it\xi}| dt\\
   & = & \int_{\mathbb{R}} |f'(t)| dt\\
  \end{array}
  $$

  Ainsi, $f$ est bornée.

  $$
  \text{Ainsi } |\stackrel{\wedge}{f}(\xi)| = {1 \over \xi}\underset{\text{(bornée)}}{|\stackrel{\wedge}{f'}(\xi)|} \xrightarrow[\xi \to \pm\infty]{}
  $$

  $$
  \text{Ainsi } \boxed{\stackrel{\wedge}{f}(\xi) \xrightarrow[\xi \to \pm\infty]{} 0}
  $$

- **Théorème de Borel Lebesgues.** $f$ intégrable alors $\boxed{\stackrel{\wedge}{f}(\xi) \xrightarrow[\xi \to +\infty \text{ ou } -\infty]{} 0}$

- **Théorème de Parseval** _(voir exo 5 du TD pour une application)_
  $$
  \boxed{\int_ {\mathbb{R}} |f(t)|^2 dt = {1 \over 2 \pi} \int_{\mathbb{R}} |\stackrel{\wedge}{F}(\xi)|^2 d\xi}
  $$

## 3. Théorème d'inversion

**Théorème.** si $f$ est intégrable et $\stackrel{\wedge}{f}$ intégrable.

Alors $\forall t \in \mathbb{R}$,
$$
\boxed{f(t) = {1 \over 2 \pi} \int_{\mathbb{R}} \stackrel{\wedge}{f}(\xi)e^{it \xi} d\xi}
$$

> *Remarque.* Soif $f$ intégrable. Si on note
> $$
> \stackrel{\vee}{f}(t) = f(-t) \text{ (} \vee \text{ prononcé "tchetch") }
> $$
>
> Alors la formule d'inverion peut s'écrire
> $$
> \stackrel{\wedge}{\stackrel{\wedge}{f}} = 2\pi \stackrel{\vee}{f}
> $$
>
> **Application.** Si $f$ et $g$ sont intégrable tq $\stackrel{\wedge}{f} = \stackrel{\wedge}{g}$ (et est intégrable)
>
> **Preuve.**
> $$
> f = \stackrel{\vee}{\stackrel{\vee}{f}} = {1 \over 2 \pi} \stackrel{\vee}{\stackrel{\wedge}{\stackrel{\wedge}{f}}} = {1 \over 2 \pi} \stackrel{\vee}{\stackrel{\wedge}{\stackrel{\wedge}{g}}} = \stackrel{\vee}{\stackrel{\vee}{g}} = g
> $$
>
> **Preuve.**
> $$
> \begin{array}{lcl}
> f(t) & = & {1 \over 2\pi} \int_{\mathbb{R}} \stackrel{\wedge}{f}(t) e^{it\xi} dt\\
> & = & {1 \over 2\pi} \int_{\mathbb{R}} \stackrel{\wedge}{g}(t) e^{it\xi} dt \text{ (car } \stackrel{\wedge}{f} = \stackrel{\wedge}{g} \text{)}\\
> & = & g(t)
> \end{array}
> $$

*Exemple.* Simplifier $\stackrel{\vee}{\stackrel{\wedge}{\stackrel{\wedge}{\stackrel{\vee}{\stackrel{\wedge}{f}}}}} = 2\pi \stackrel{\vee}{\stackrel{\vee}{\stackrel{\vee}{\stackrel{\wedge}{f}}}} = 2\pi \stackrel{\vee}{\stackrel{\wedge}{f}} = 2\pi \stackrel{\wedge}{\stackrel{\wedge}{\stackrel{\wedge}{f}}} = 2\pi \stackrel{\wedge}{\stackrel{\vee}{f}}$

*Proposition.*
- $\stackrel{\vee}{f} = f \Leftrightarrow f$ paire
- $\stackrel{\vee}{f} = -f \Leftrightarrow f$ impaire

_Question._ Si $f$ paire, que dire de $\stackrel{\wedge}{f}$ ? Idem pour $f$ impaire.

**Application calcul de TF : questions.** Soit $f(t) = {1 \over 1+t^2}$, soit $\varphi_{\alpha}(t) = e^{-\alpha(t)}$

1. Calculer la TF de $\varphi_{\alpha}$
2. En déduire celle de $f$

**Application calcul de TF : réponses.**

1.
$$
\begin{array}{lcl}
\stackrel{\wedge}{\varphi_{\alpha}}(\xi) & = & \int_{\mathbb{R}} \varphi_{\alpha}(t)e^{-it\xi} dt\\
 & = & \int_{-\infty}^{0} e^{\alpha t} e^{-it\xi} dt + \int_{0}^{+\infty} e^{-\alpha t} e^{-it\xi} dt\\
 & = & \int_{-\infty}^{0} e^{(\alpha-i\xi)t} dt + \int_{0}^{+\infty} e^{-(\alpha+i\xi)t} dt\\
 & = & [{e^{(\alpha-i\xi)t} \over \alpha-i\xi}]_{-\infty}^{0} + [{e^{-(\alpha+i\xi)t} \over -(\alpha+i\xi)}]_{0}^{+\infty}\\
 & = & {1 \over \alpha-i\xi} + {1 \over \alpha+i\xi}\\
 & = & {2\alpha \over (\alpha-i\xi)(\alpha+i\xi)}\\
 & = & \boxed{{2\alpha \over \alpha^2+\xi^2}}\\
\end{array}
$$

$$\text{Ainsi }\boxed{\stackrel{\wedge}{\varphi_{1}} = 2f}$$

1. Donc $\stackrel{\wedge}{f} = {1 \over 2}\stackrel{\wedge}{\stackrel{\wedge}{\varphi_{1}}} = \pi \stackrel{\vee}{\varphi_{1}} = \pi \varphi_{1}$ car $\varphi_{1}$ paire.

$$
\text{Ainsi, } \boxed{\stackrel{\wedge}{f}(\xi) = \pi e^{-|\xi|}}
$$

## 4. Application au calcul d'EDL

*Exemple.* $y'' + ay' + b = f$ en appliquant la TF, on obtient
$$
\stackrel{\wedge}{(y'' + ay' + b)} = \stackrel{\wedge}{f}
$$
$$
\begin{array}{lcl}
\stackrel{\wedge}{y''} + a\stackrel{\wedge}{y'} + b\stackrel{\wedge}{y} = \stackrel{\wedge}{f} & \Leftrightarrow & (i \xi)^2\stackrel{\wedge}{y} + a(i \xi)\stackrel{\wedge}{y} + b\stackrel{\wedge}{y} = \stackrel{\wedge}{f} \\
& \Leftrightarrow & ()(i \xi)^2 + a(i \xi) + b) \stackrel{\wedge}{y} = \stackrel{\wedge}{f}
\end{array}
$$

Donc
$$
\stackrel{\wedge}{y} = \underset{\text{fonction de transfert}}{{1 \over (i \xi)^2 + a(i \xi) + b}} \stackrel{\wedge}{f}
$$

Après, on calcule $\stackrel{\wedge}{f}$ puis on simplifie $\stackrel{\wedge}{y}$ pour l'écrire out une forme de TF de fonctions classiques.

```
'Exp':
  'prefix': 'exp'
  'body': 'e^{$1}$0'

'wedge function':
  'prefix': 'wedge'
  'body' : '\\\\stackrel{\\\\wedge}{${1:f}}(${2:\\\\xi})$0'
```
.

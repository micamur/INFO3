% Chapitre 1 - Analyse de Fourier
% Rémi MOLINIER (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 30 Novembre 2018

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

  Calculer la TF de $$f : \left\{\begin{array}{lcl} \mathbb{R} & \rightarrow & \mathbb{R}\\t & \mapsto & \begin{cases}
  1 \text{ si } t \in [-2, 1]\\
  0 \text{ sinon }\\
  \end{cases}\end{array}\right.$$

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

  2. $f$ intégrable telle que $\stackrel{\wedge}{f}$ est $\mathcal{C}^1$ :

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
<!-- 
```
'Exp':
  'prefix': 'exp'
  'body': 'e^{$1}$0'

'wedge function':
  'prefix': 'wedge'
  'body' : '\\\\stackrel{\\\\wedge}{${1:f}}(${2:\\\\xi})$0'
``` -->
.

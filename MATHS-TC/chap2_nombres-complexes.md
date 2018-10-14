% Chapitre 2 - Nombres complexes
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 1er Septembre 2018

- Forme algébrique : $z = a + ib,\ a,b \in \mathbb{R}$
- Conjugué : $\overline{z} = a - ib$
- $\overline{z+z'} = \overline{z} + \overline{z'}$
- $\overline{zz'} = \overline{z}\overline{z'}$

\begin{figure}
\centering
\includegraphics[height=10cm, angle=90]{res/mathTC2.png}
\end{figure}

$$|z| = \sqrt{a^2 + b^2} = \sqrt{z\overline{z}}$$
$$arg(z) = (\overrightarrow{u}; \overrightarrow{OM})\ modulo\ 2\pi$$

**Propriété.** Soit $z \in \mathbb{C}* \exists r > 0$ et $\theta \in \mathbb{R}$ tq $$z = r \cos{\theta} + i*r*\sin{\theta}$$ avec $r = |z|$ et $\theta = arg(z)$.
Si $z = a + ib$ alors $r = \sqrt{a^2 + b^2}$, $\cos{\theta} = {a \over r} = {a \over \sqrt{a^2 + b^2}}$, $\sin{\theta} = {b \over \sqrt{a^2 + b^2}}$

**Définition.**
$$\forall \theta \in \mathbb{R},\ e^{i\theta} = \cos(\theta) + i\sin(\theta)$$
$$\forall x \in \mathbb{R},\ e^x = \displaystyle\sum_{k=0}^{+\infty} {x^k \over k!}$$
$$\forall \theta \in \mathbb{R},\ e^{i\theta} = \displaystyle\sum_{k=0}^{+\infty} {(i\theta)^k \over k!} = \cos(\theta) + i\sin(\theta)$$
$$e^{i(\theta+\theta')} = e^{i\theta}e^{i\theta'}$$
$$(e^{i\theta})^n = e^{in\theta}$$

**Définition.** Tout complexe z non nul de module $z$ et d'argument $\theta$ s'écrit $z = re^{i\theta}$
$$e^{i2\pi} = 1$$
$$e^{2ik\pi} = 1,\ \forall k \in \mathbb{Z}$$
$$e^{ik\pi} = (-1)^k$$
$$|e^{i\theta}| = 1,\ \forall \theta \in \mathbb{R}$$

\pagebreak

**Propriété.** $\forall \theta \in \mathbb{R}$
$\cos{\theta} = {e^{i\theta}+ e{-i\theta} \over 2}$, $\sin{\theta} = {e^{i\theta} - e^{-i\theta} \over 2i}$
Application : soit $z \in \mathbb{C}*$, résoudre $Z^n = z$
$$z = re^{i\theta}$$
$Z = Re^{i\alpha}$, les inconnues sont $R$ et $\alpha$.
$$R^ne^{in\alpha} = re^{i\theta}$$
$$\Leftrightarrow R^n = r \Leftrightarrow R = r^{1\over n} / n\alpha = \theta + 2k\pi\ k\in\mathbb{Z}$$
$$\Leftrightarrow R = r^{1\over n} = \sqrt[n]{r} / \alpha = {\theta + 2k\pi\over n}\ k \in \{0, 1, .., n-1\}$$

*Exemple.* Résoudre $Z^3 = -1 = e^{i\pi}$
$$\Leftrightarrow Z^3 = R^3e^{i3\alpha} = e^{i\pi}$$
$$\Leftrightarrow R = 1 \\ \alpha = {\pi \over 3}$$
ou
$$\Leftrightarrow Z^3 = (a + ib)^3 = -1$$
$$\Leftrightarrow a = -1$$
Donc $Z^3 = - 1$ avec $Z = e^{i\pi + 2k\pi,\ k \in \mathbb{Z} }$ ou $Z = e^{i{\pi \over 3} + {2k\pi \over 3},\ k\in \mathbb{Z}}$

- Application 2, résoudre dans $\mathbb{C}$ : $aZ^2 + bZ + c = 0,\ a,b,c \in \mathbb{C}$ et $\Delta = b^2 - 4ac \in \mathbb{C}$

- Il suffit de trouver $\delta \in \mathbb{C}$  ($\delta = a + ib$) tq $\delta^2 = \Delta$

$$Z = {-b \pm \delta \over 2a}$$
(deux racines complexes)
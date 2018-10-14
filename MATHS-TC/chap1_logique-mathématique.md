% Chapitre 1 - Logique mathématique
% Manel TAYACHI (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 1er Septembre 2018

# A) Fondements

- On part d'un petit nombre d'affirmations, appelées axiomes, supposées vraies *à priori* -> les cinq postulats d'Euclide
- On définit ensuite la notion de démonstration
- On appelle __théorème__ toute affirmation obtenue en fin de démonstration. Une telle affirmation est vraie.
- On constitue ainsi la "vérité" mathématique

# B) Vocabulaire

- **Axiome**. Un axiome est un énoncé supposé vrai a *priori* et que l'on ne cherche pas à démontrer
- **Proposition ou assertion ou affirmation**. Une proposition est un énoncé pouvant être vrai ou faux. Par exemple, "tout nombre premier est impair" et "tout carré de réel est un réel positif" sont deux propositions => cela reste à démontrer.
- **Théorème**. Un théorème est une proposition vraie. Par abus de langage, le mot proposition désigne souvent, dans la pratique des cours de mathématiques, un théorème intermédiaire ou de moindre importance.
- **Corollaire**. Un corollaire à un théorème est un théorème qui est conséquence de ce théorème.
- **Lemme**. Un lemme est un théorème préparatoire à l'établissement d'un théorème de plus grande importance.
- **Conjecture**. Une conjecture est une proposition que l'on suppose vraie sans parvenir à la démontrer.

\pagebreak

# C) Logique mathématique

## 1) Calcul propositionnel

### a) Équivalence logique

**Définition.** Soient P et Q 2 propositions. Elles sont équivalentes si elles sont simultanément vraies et simultanément fausses.

| $P$ | $Q$ | $P \Leftrightarrow Q$ |
| - | - | - |
| V | V | V |
| V | F | F |
| F | V | F |
| F | F | V |

*Exemple* :

$$x^2 = 1 \Leftrightarrow x = 1\ ou\ x = -1$$

### b) Négation

**Définition.** Soit $P$ un proposition. On définit sa négation $\bar{P}$ par :

| $P$ | $\overline{P}$ |
| - | - |
| V | F |
| F | V |

$$\forall (x,y) \in \mathbb{R}^2,\ si\ x \leq y\ alors\ f(x) \leq f(y)$$
$$\exists (x,y) \in \mathbb{R}^2\ tq\ x \leq y\ et\ f(x) > f(y)$$
$$\exists n \in \mathbb{N}\ |\ n\ est\ pair$$

**Proposition** : $\overline{\overline{P}} = P$

\pagebreak

### c) Les connecteurs "et" et "ou"

| $P$ | $Q$ | $P \lor Q$|
| - | - | - |
| V | V | V |
| V | F | V |
| F | V | V |
| F | F | F |

| $P$ | $Q$ | $P \land Q$|
| - | - | - |
| V | V | V |
| V | F | F |
| F | V | F |
| F | F | F |

$P \lor Q$ Faux si et seulement si $P$ et $Q$ sont faux simultanément ou inclusif

**Proposition.** Soient $P$ et $Q$ deux propositions,
$$\overline{P \land Q} = \overline{P} \lor \overline{Q}$$
$$\overline{P \lor Q} = \overline{P} \land \overline{Q}$$

### d) Implication logique

**Définition.** Soient $P$ et $Q$ deux propositions, $P \Rightarrow Q$ est définie par son tableau de vérité :

| $P$ | $Q$ | $P \Rightarrow Q$ |
| - | - | - |
| V | V | V |
| V | F | F |
| F | V | V |
| F | F | V |

On peut penser à plusieurs analogies pour s'aider : un interrupteur et une ampoule (villemin.gerard.free.fr), "Si tu parles, je te tue"...

**Théorème.** Soient $P$ et $Q$ deux propositions, $(P \Rightarrow Q) \Leftrightarrow \overline{P} \lor Q$ (à prouver).

**Théorème.** Si $$(P \Rightarrow Q) \land (Q \Rightarrow R) \Rightarrow (P \Rightarrow R)$$ c'est la transitivité.

**Théorème.** $(P \Leftrightarrow Q) \Leftrightarrow \big((P \Rightarrow Q) \land (Q \Rightarrow P)\big)$

\pagebreak

### e) Condition nécessaire et suffisante (CN et CS)

**Définition.** Soient $P$ et $Q$ deux propositions. Dire que $P$ est **nécessaire** à $Q$ signifie que pour $Q$ soit réalisé il faut que $P$ le soit. Cela revient à dire $Q \Rightarrow P$.

*Exemple.* "Il y a des nuages" Condition Nécessaire de "Il pleut" : "Il pleut" $\Rightarrow$ "Il y a des nuages"

**Remarque.** $P$ peut ne pas être suffisant pour $Q$ c'est-à-dire on peut avoir $P$ réalisé sans que $Q$ ne le soit.

| $\Rightarrow$ | $\Leftarrow$ |
|:-:|:-:|
| CN | CS |
| il faut | il suffit |
| seulement si | si |

### f) Négation, contraposée et réciproque d'une implication

**Théorème. Négation d'une implication.**
$$\overline{P \Rightarrow Q} \Leftrightarrow P \land \overline{Q}$$

**Théorème. Contraposée d'une implication.**
 $$(P \Rightarrow Q) \Leftrightarrow (\overline{Q} \Rightarrow \overline{P}) $$
 on dit que $\overline{Q} \Rightarrow \overline{P}$ est la contraposé de $P \Rightarrow Q$

**Définition.** La réciproque de $P \Rightarrow Q$ est $Q \Rightarrow P$

## 2) Les quantificateurs $\forall$ et $\exists$

**Définition.** "Pour tous les éléments de $\mathbb{E}$, la proposition $P(x)$ est vraie" s'écrit "$\forall x \in \mathbb{E},\ P(x)$"

**Définition.** "Il existe au moins un élément de $\mathbb{E}$ tel que la proposition $P(x)$ est vraie" s'écrit "$\exists x \in \mathbb{E},\ P(x)$"

- $\exists!$ : il existe un unique
- $\forall$ : quantificateur universel
- $\exists$ : quantificateur existentiel

- La fonction f est l'identité de $\mathbb{R}$ : $f = Id_{\mathbb{R}}\ |\ \forall x \in \mathbb{R},\ f(x) = x$
- Pour tout point $M$ du plan $\mathcal{P}$, $M$ est sur le cercle $\mathcal{C}$ de centre $\Omega$ et de rayon $R$ ssi la distance de $M$ à $\Omega$ vaut $R$ : $\forall M \in \mathcal{P},\ (M \in \mathcal{C}(\Omega,R) \Leftrightarrow D(M,\Omega) = R,\ \Omega M = R)$

**Théorème.** Soit $E$ un ensemble et $P(x)$ est une proposition dont les valeurs de vérité sont en fonction des éléments $x$ de $E$ :

- $\big(\forall x \in E,\ P(x)\big) \Leftrightarrow \big(\exists x \in E,\ \overline{P(x)}\big)$

- $(\exists x \in E,\ P(x)) \Leftrightarrow (\forall x \in E,\ \overline{P(x)})$
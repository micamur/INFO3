% Chapitre 5 - Statistiques
% Prof (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Vendredi 15 Mars 2019

# Introduction

En statistiques on observe / mesure une grandeur (le caractère $x$) sur des individus abstraits (la population, individu $i$). On mesure $x$ sur l'individu $i$.

Il est difficile de gérer toutes ces mesures, donc on trie (on regroupe) la série statistique :

- **discret** : peu de valeurs prises par $x$.
  On peut tracer le diagramme en bâton (la valeur de $x$ sur les abscisses, l'effectif sur les ordonnées) (diagramme en bâtons).

- **continu** : $x$ prend beaucoup de valeurs différentes dans un intervalle.
  On peut découper en classes ($a_i$), supposer que les effectifs sont équirépartie au sein de la classe (histogramme en rectangles). L'effectif est donné par l'aire du rectangle.

# 1 - Indicateurs statistiques

## Indicateurs de position

### Moyenne

$\overline{x} = \sum x_i {n_i \over n}$

C'est le centre de gravité de la série.

### Médiane

Valeur qui partage la population en 2.

Ces indicateurs sont les valeurs que prendrait le caractère s'il n'y avait pas de différence dans la population. En ce sens, la moyenne et la médiane sont réductrices.

### Les quartiles (quantiles)

$q_{0.25}$ (resp $q_{0.75}$) valeur du caractère qui partage la population en proportions ${1 \over4} / {3 \over 4}$ (resp ${3 \over 4} / {1 \over 4}$).

Pour $0 \leq \alpha \leq 1$, $q_\alpha$ partage la population en proportions $\alpha / 1 - \alpha$

## Indicateurs de dispersion

$$
\sigma = \sqrt{ \sum (x_i - \overline{x})^2 {n_i \over n}}
$$

Écart-type = distance moyenne entre les valeurs de la sére et $\overline{x}$

$$Var\; x = \sigma^2$$

Ces indicateurs prennent en compte les différences.

# 2 - Boîte de distribution (boxplot, moustaches)


```
  o <- valeurs marginales (hors de la moustache), valeurs qui sortent de la normal de notre problème
  o
(----- <- moustache provisoire  = 1.5 IQ = q0.75 - q0.25)
  |
----- <- plus grande valeur en dessous de la MP  
  |
  |
|----|<- q0.75
|    |
|----| <- médiane
|----| <- q0.25
  |
----- <- plus petite valeur au dessus de la MP
  |
  |
(----- <- moustache provisoire)

  o
```

# 3 - Statistiques à 2 variables

On mesure 2 caractères $(x_i, y_i)$ sur l'individu $i$. On trace le nuage $(x_i, y_i)$.

3 types de nuages :

- Le nuage quelconque (aucune relation entre $x$ et $y$)
- Dépendance non linéaire -> changement de variable pour avoir un cas linéaire
- Le nuage rectiligne -> régression linéaire (méthode des moindres carrés).

## Régression linéaire

On prend la droite qui minimise le carré de la somme des distances verticales (résidus) de la droite aux points. On obtient une droite $y = ax + b$, elle passe par $\overline{x}$ et $\overline{y}$. Cette méthode donne le coefficient $a$, on trouve $b$ en faisant vérifier l'équation $y = ax + b$, par le centre de gravité $(\overline{x},\overline{y})$.

>   Toute droite de régression passe par le centre de gravité

> On peut toujours calculer une régression linéaire (même avec un nuage quelconque).

$Cov(x, y) = {1 \over n} \sum\limits_{n} (x_i - \overline{x})(y_i - \overline{y}) = var x$

"La covariance est un produit scalaire"

**Inégalité de Cauchy-Scwwartz** $-\underset{\sigma_x}{||x||}\;\underset{\sigma_y}{||y||} <\;\underset{cov(x, y)}{<x, y>}\;\leq \underset{\sigma_x}{||x||}\;\underset{\sigma_y}{||y||}$

> Égalité en cas de vecteurs colinéaires (linéairement liés)

$-1 \leq {Cov(x, y) \over \sigma_x \sigma_y} \leq 1$. Séries $x, y$ sont linéairement liées si $r_{x, y}$ (coeff de corrélation linéaire) est proche de $1$ ou $-1$.

$r_{xy}$ est du signe de $a$

En pratique, on ne fait une régression linéaire que si $r_{x, y} \in [-1, -0.9]\cup[0.9, 1]$

$r_{xy}^2 = R^2$ correspond à la proportion de variance de la série $(x, y)$ expliquée par la droite. $|r_{x, y}| \geq 0.9$ alors $R^2 \geq 0.8$, donc la droite contient $80 %$ de la variance de la série.

> *Remarque.* La régression polynomiale est dangereuse car en montant en degré on peut passer par n'importe quel point sans qu'ils n'aient aucune relation entre eux. De plus, en dehors de l'intervalle d'étude ça devient n'importe quoi et varie en fonction du degré choisi (paire ou impaire). On ne peut pas s'en servir pour connaître des valeurs en dehors de l'intervalle. La régression polynômiale ne permet pas de sortir de l'interalle d'étude.

> **On n'utilise un modèle polynômial que si une règle physique le justifie.**













.

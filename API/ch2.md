% Chapitre 2 - Analyse d'algorithmes
% Georges-Pierre BONNEAU (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 15 Octobre 2018

# Introduction

- **Prévoir les ressources nécessaires à l'exécution d'un algorithme** : **temps**, mémoire, énergie, bande passante / réseau

- **Hypohèse** : modèle de calcul générique, "machine à accès aléatoire" **RAM** ou **Random Access Memory**
    - Instructions arithmétiques en temps constant
    - Instructions de transfert de données en temps constant
    - Instructions de branchement conditionel et inconditionnel (`goto`, `bal`) en temps constant
    - Les valeurs ont une taille limite maximum
    - On ne va pas tenir compte de la hierarchisation de la mémoire

# Tri par insertion

Le temps d'exécution va changer en fonction de :
- la taille du tableau
- le contenu du tableau

Ligne | Temps constant par instruction |        Nb d'exécutions
:----:|:-----:|:----------------------------:
$L1$  | $C_1$ |              $1$
$L2$  | $C_2$ |     $N$ ($j:2 \dots N+1$)
$L3$  | $C_3$ |    $N - 1$ ($j:2 \dots N$)
$L4$  | $C_4$ |            $N - 1$
$L5$  | $C_5$ | $A = \sum\limits_{j=2}^N t_j$
$L6$  | $C_6$ |            $A - 1$
$L7$  | $C_7$ |            $A - 1$
$L8$  | $C_8$ |            $N - 1$
$L9$  | $C_9$ |            $N - 1$

Avec $t_j$ le nombre de fois où on rentre dans la sous boucle.

Soit $\ Temps(T)$ le temps de calcul total pour le tableau $T$
$\ Temps(T) = C_1 + C_2 \times N + (C_3 + C_4 + C_8 + C_9) \times (N - 1) + C_5 \times A + (C_6 + C_7) \times (A - 1)$

**Temps de calcul minimum** (tableau déjà trié):
  - $t_j = 1$
  - $A = N - 1$
  - $\ Temps(T) =\ Constante \times N +\ Constante'$

**Temps de calcul maximum** (tableau déjà trié mais dans le sens inverse) :
- $t_j = j$ : comparaison de $Clef$ avec $T[j-1 \dots 1]$ et à la fin on vérifie $i = 0 < 1$
- $A = \sum\limits_{j=2}^N j = {N(N + 1) \over 2} - 1$
- $\ Temps(T) =\ Constante \times N^2 +\ Constante' \times N +\ Constante''$














.

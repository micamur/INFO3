% Chapitre 1 - Introduction
% Jean-François MÉHAUT (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Jour numéro Mois année

# Informations

8 semaines TD / TP

Note : 50% Exam + 50% CC (3 TPs en trinôme : Polynôme, Algèbre linéaire, Parallelisation (MN) / ABR, Arbre 234, Graphe (algo))

1 TP ~ 2-3 semaines (environ 2/3 de la note pour un programme qui marche et 1/3 sur l'évaluation des performances)
Tous les documents et même le PC pour l'exam

En MN, beaucoup d'études de performances

Cours sur Moodle

```bash
cat /proc/cpuinfo # pour voir les informations du processeur
lstopo # show the topology of the system
time PROG # affiche le temps d'exécution d'un programme
perf PROG # affiche les cycles à l'exécution d'un programme
cat /usr/include/limits.h # limites min et max des différents types d'entiers
htop # état du processeur et de la mémoire
```

Caches :

- L1i pour les instructions (privé)
- L1d pour les données (privé)
- L2 pour les données et les instructions
- L3 cache partagé pour les données et les instructions

![Memory hierarchy]()

Si le programme et ses variables tiennent en entier dans le cache, il sera plus rapide.

je ne trouve pas le cours sur moodle moi non plus
mince alors :/
faudra lui dire à la fin du cours

`time` :

- `real` : le temps réel mesuré avec un chronomètre (`user` + `sys` si sur 1 cœur)
- `user` : uniquement le coût du programme, pas de coût système (temps pour tous les cœurs additionnés)
- `sys` : temps pour les affichages dans la console, etc.
- 1 cœur : 37s / 37s / 0s
- 2 cœurs : 23s / 46s / 0s
- 4 cœurs : 13s / 53s / 0s
- 8 cœurs : 10s / 1m18s / 0s

`perf` :

- Un cycle = une période d'horloge
- Pipeline : permet d'exécuter plusieurs instructions en un cycle (Intel : hauteur 9)
- 1 cœeur :
  - $128 \times 10^9$ cycles à 3,373 GHz
  - $200 \times 10^9$ instructions soit 1,57 inst/cyc
  - $69 \times 10^9$ branches dont $2 \times 10^9$ branch-misses (3,80%)

En connaissant le nombre d'opérations flottantes et le nombre de cycles on peut calculer le nombre de flops/s, Mflops/s ou Gflops/s (float operation point per sec).

Les performances d'un programme dépendent de la manière dont il est écrit mais aussi de la version du **compilateur** (`gcc -v`) et du niveau / des options d'**optimisation** (`gcc -02`, `gcc -03`, etc.).

Différents types d'entiers (octets) : `char` (1), `short int` (2), `int` (4), `long int` (8)

Petites optimisations faciles :

- indices de boucle en `unsigned`
- variables scalaires (simples, pas tableau) en `register`
- taille de structure en puissances de 2
- penser à l'emprunte mémoire des données, pour que ça rentre dans le cache

Les valeurs max et min de chaque type dans `limits.h`

Norme IEEE (date de 1985) 754 pour la représentation des réels courts (32 bits)

*Exemple.* Représentation d'un polynôme dans un tableau :

$50.25$ | $+ x$ | $+ 25x^2$ | $+ x^3$
--------|-------|-----------|--------
50.25   | 1     | 25        | 1

*Exemple.* Polynôme problématique avec cette représentation : $x^{258} + 2x + 3$

> Liste des 500 ordinateurs les plus puissants au monde (LINPACK benchmark) : https://top500.org/statistics/sublist/




.

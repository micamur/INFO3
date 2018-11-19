% Chapitre 4 - Ensembles dynamiques, pointeurs et listes
% Georges-Pierre BONNEAU (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 19 Novembre 2018

# Introduction

Opération sur un ensemble dynamique :
- Énuméraion des valeurs de l'ensemble
- Insertion de valeur
- Supression de valeur
- Requête : est-ce que la valeur $k$ est dans l'ensemble $E$ ?
- Si une relation d'ordre existe : valeurs Minimum, Maximum, Suivante et Précédente

# Pointeurs

- On appelle "Objet" les éléments des ensembles
- Un objet peut comperter un ou plusieurs "Attributs"
- Pointeur vers un objet : repère, adresse de l'objet

Analogie avec les tableaux :
- Soit $T$ un tableau de comptes bancaires
- $T[i]$ un compte bancaire d'indice $i$
- $p$ : un pointeur vers un compte bancaire
- $p↑$ : compte bancaire pointé par $p$
- Attributs : Solde de $p↑$, découvert de $p↑$, etc.
- Ne pas confondre le pointeur $p$ et $p↑$ l'objet pointé par $p$

Deux opéraitons fondamentales sur les pointeurs

`Allouer(p)`                                                           | `Libérer(p)`
-----------------------------------------------------------------------|-------------
Recherche d'un espace mémoire suffisamment grand pour stocket un objet | Indique au système d'exploitation que l'espace mémoire pointé par p peut être utilisé
L'adresse de l'espace mémoire est écrite dans $p$                      |

- $Nil$ : une valeur spéciale du pointeur, signfiant qu'il ne pointe aucun objet



















.

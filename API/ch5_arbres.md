% Chapitre 5 - Arbres
% Georges-Pierre BONNEAU (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 3 Décembre 2018

# Pourquoi faire des arbres (triés) ?

Coûts avantageux :
- Insertion : $O(1)$
- Suppresion : $O(1)$
- Recherche : $O(log(N))$

Structure de données hiérarchique :
- les objets sont stockés dans des nœuds
- nœud spécial : le nœud racine, tout en haut de la hiérarchie
- tous les autres noœuds n'ont qu'un seul nœud parent
- tous les nœuds (y compris la racine) peuvent avoir 0, 1 ou plusieurs nœuds enfants
- les nœuds sans enfants sont appellés des feuilles de l'arbre
- chaque nœud peut être associé à une profondeur

# Un arbre binaire

C'est un arbre dans lequel chaque nœud a au plus 2 nœuds enfants.

## Représentation chaînée des arbres binaires à l'aide de pointeurs

À chaque objet on associe 2 pointeurs, un vers l'enfant "à gauche", un vers l'enfant "à droite".

- Type Objet : quelconque
- Triplet : le type \<O : un objet ; gauche : un AdTriplet ; droit : un AdTriplet>
- AdTriplet : le type pointeur vers un Triplet















.

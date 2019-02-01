% Chapitre 1 - Arbres et...
% Jean-François MEHAUT (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Mardi 22 Janvier 2019

# 0 - Informations

1 Examen, 3 TP

TP 1 : Les ABR à rendre la semaine du 8 février

Cours des arbres sur la conv INFO3

Principe du TP : un code source à compléter où les entrées sorties sont déjà faites, on s'occupe du reste (affichage couché dans les TPs)

Compiler avec `-Wall` et donner un Makefile.
Mail : jean-francois.mehaut@inria.fr

# 1 - Arbres

- **Arbre** : ensemble de **nœuds** (admettant un **niveau**) reliés par des **arêtes**
- Un nœud admet 0 ou plusieurs **fils** qui sont soit des nœuds **internes** soit des **feuilles** et peut contenir une **clé**
- Arbres Binaires de Recherche : **ABR** (clé fG < clé < clé fD)
- Arbres Equilibrés : **AVL** et **arbres 1 2 3**

**ABR parfait** : les feuilles sont toutes situées dans les deux derniers niveaux et les feuilles du dernier niveau sont toutes à gauche.

**ABR représenté par un tableau** : on a un accès en O(1) à chaque nœud

- On mémorise les nœuds séquentiellement de la racine aux feuilles et de gauche vers la droite (par niveau)
- Le fils gauche de A[i] est en A[2i] et le droit en A[2i+1]
- Le parent de A[j] est en A[j/2]

```C
typedef struct n {
  int clé;
  struct n *fGauche, *fDroit;
} noeud_t, *pnoeud_t;

typedef pnoeud_t Arbre_t;

typedef struct {
  int sommet;
  pnoeud_t Tab[MAX];
} file_t, *pfile_t;
```

Différents parcours :

- **infixé**/inOrder : visite les clés dans l'ordre croissant dans un ABR
- **préfixé**/preOrder (itératif avec une pile)
- **postfixé**/postOrder
- **par niveau**/levelOrder (file)

# 2 - AVL

**Définition.** Arbre AVL (Adelson-Velskii et Landis) : un ABR tel que la différence des hauteurs du sous-arbre gauche et droit de la racine est d'au plus 1 **et** les sous-arbres gauche et droit sont des AVL (équilibrage nécessaire).


biiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii






.

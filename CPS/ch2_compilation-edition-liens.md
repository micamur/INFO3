% Chapitre 2 - Compilation et édition de liens
% Vincent DANJEAN (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Jeudi 14 Mars 2019

# I - Rappel sur la compilation séparée

Étapes de la [chaîne de compilation][55bc4c8c] :

  [55bc4c8c]: https://c.developpez.com/cours/mode-emploi-gcc/#LIII "Mode d'emploi de GCC - Developpez.com"

1. **Préprocessing** (`gcc -E` pour s'arrêter ici) : remplacement des macros, traite les includes, etc. (programme `cpp`)
2. **Compilation** (`gcc -S` pour s'arrêter ici) : génération d'un fichier assembleur = .c vers .S (programme `cc1`)
3. **Assemblage** (`gcc -c` pour s'arrêter ici) : génération d'un fichier objet = .S vers .o (programme `rs`)
4. **Édition de liens** : transforme les .o en exécutables (programme `ld`)

> gcc ne fait pas tout tout seul, il appelle différents programmes (voir ci dessus).

> `gcc -v` pour voir les sous commandes qui sont appelées

- **Fichier objet** : il y a le code binaire et les symboles (mem + adresse)
- **Fichier header** : tout ce qui est dans le .h ne sera pas dans le .o, donc on fait uniquement des déclarations (fonctions, types, variables globales, etc.),
mais **pas** de définition, sauf si elle ne gère pas de symboles :
  *ex: fonctions "inline"*

# II - Fichiers objet, format ELF (Linux)

Format ELF :

- En-tête
- Sections :
  - code binaire
  - chaînes
  - symboles

```
foo.o

section code ---------
main :
  ldr r0, r1
  bl calcul <- corrige le déplacement de bl pour aller à calcul

table des symboles ---------

main : 0x0
calcul : UNDEF

section de allocation ----------
```

```
bar.o

section code ---------
calcul :
  ...

table des symboles ---------

calcul : 0x0

section de allocation ----------
```

```
prog

section code ---------
main :
  ldr r0, r1
  bl <-- correction du déplacement

calcul:
  ...
table des symboles ---------

main : 0x0
calcul : 0x120

section de allocation ----------
```

# III - Bibliothèque

- Édition de liens statique (fichiers .a) : au niveau de la compilation (programme autonome)
- Édition de liens dynamique (fichiers .so) : au niveau de l'exécution





API : Application Programming Interface
ABI : Application Binary Interface

.

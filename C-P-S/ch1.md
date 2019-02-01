% Chapitre 1 - Le langage C
% Vincent DANJEAN (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Jeudi 24 Janvier 2019

# I - Historique

Date des années 1970

Indépendant du processeur

C : Ecrit pour des programmes qui ne dépendent pas de la machine sur laquelle on l'exécute. Bas niveau

L'Assembleur est considéré comme un langage compilé

Java est compilé et interpreté

# II - Syntaxe / Concepts

## 1) Types

Classés par taille en octets : char, short, int, long (int), long long (int)

La taille n'est pas définie par le langage C mais en général c'est : 1, 2, 4, 4 ou 8, 8 ou 16)

Qualificatifs :  signed ou unsigned

Types flottants : float, double, long double

Pointeurs : contient toujours une adresse donc toujours la même taille (type * ou type \*\*), NULL par défaut

Tableau : int t[2]

## 2) Syntaxe

Variables : `type nom = valeur;`

Fonctions : `typeretour nom(type param1, type param2) {...}`

Structures de contrôle :

- Si sinon : `if (condition) {...} else if (condition) {...} else {...}`
- Boucle pour : `for (initialisation; test; incrémentation) {...}`
- Boucle tant que : `while (test) {...; incrémentation;}`
- Switch case :

  ```c
  switch(value) {
    case c1:  i1; i2; break;
    case c2:  i3;     break;
    case c3:  i4;     // attention on va tester c4 aussi !
    case c4:  i5;     break;
    default:  i6;     break;
  }
  ```

## 3) Pointeurs

```c
int  bar = 2;
int *foo = NULL;   // pointeur vide
     foo = &bar;   // foo est l'adresse de bar
    *foo = 3;      // bar vaut 3
int    c = bar*bar // multiplication

    foo += 1                       // la case suivante (adresse + 4)
     foo = (int*)((char*) foo + 1) // adresse + 1 -> tout cassé
```

## 4) Déclaration et définition

```c
extern int bar;                // prototype pour les variables globales
int foo(int, double);          // prototype de fonction sans nommer les paramètres
int foo(int a, double b);      // prototype de fonction
int foo(int a, double b) {...} // déclaration de fonction
```

À la conpilation toujours utiliser les options `-Wall` (affichage de tous les warnings) et `-g` (debug)

# III - Organisation mémoire

```
ffff

Pile
v
----

----
^
tas

----

Data (variables globales)

----

CODE

0000
```
```c
p = malloc(sizeof(int));
free(p);
```

# IV - Moteur de production

On définit les **dépendances** pour ne pas tout remettre à jour à la compilation lors du changement d’une seule ligne dans le programme.

- IDE _(graphique = lourd)_ : Eclipse, PyCharm...
- Éditeurs de texte _(non graphiques = léger)_ : **Vi**/Vim, Nano, Pico, **Emacs**...
- Compilateurs : gcc _(standard)_, clang
- Moteur de production : **Makefile**, ant (java), Automake/Autoconf (générer des Makefile portables), cmake (générateur de makefile)
- Debug : gdb, ddd, valgrind

Options GCC utiles :

- `-I` (include)
- `-L` (link)
- `-l` (librairies)
- `-Ox` (optimisation x)
- `-Werror` (warnings $\rightarrow$ erreurs)
- `-Wall` (tous les warnings)
- `-D` (paramètres)

Si le fichier contenant les règles du makefile n'a pas le nom standard Makefile on peut l'appeler avec `make -f fichier`

Certaines règles implicites sont déjà fournies par `make`.

- `-r` désactive les règles implicites
- `-B` force l'éxécution des règles (refait même celle qui sont déjà à jour)
- `-n` affiche les règles a exécuter (bien pour le debug)
- `-q` mode siliencieux
- `-t` update la date

Règles du Makefile :

- Sur la première ligne : `< cible > ':' < liste des dépendances>`
- Sur les lignes suivantes : `< tabulation >< commandes à éxécuter >`

Un `#` permet de faire un commentaire sur toute une ligne.

On peut déclarer plusieurs fois une même cible avec des dépendances diférentes et des règles différentes : pour cela on surcharge avec `::` les différentes séquences de commandes, elles seront toutes lancées en même temps. On ne peut pas mélanger des déclaration `:` et `::` pour une même cible.

Préfixes de commandes :

- `-` ignore les erreurs d'exécution
- `@` pas d'affichage en sortie
- `+` force l'exécution si `-n`, `-t` ou `-q` présent

Règles spéciales :
- `.PHONY` permet de déclarer des règles qui ne vont pas générer de fichier (pseudo-cibles) :

```
.PHONY doc clean

doc:
  man make > doc

clean:
  rm *.o prog
```

Macros prédéfinies :

- `$@` Variable du nom de la cible (@nom)
- `$%` Variable du nom de l'objet pour une cible d'archive
- `$?` L'ensemble des dépendances plus récentes que la cible
- ̀`$<` Première dépendance de la liste des dépendances ($\leftarrow$)
- `$^` Toutes les dépendances (parapluie)
- `$*` La chaîne correspondant au pattern %

```
%.o: %.c fichier.h
  @echo "[$<]"
  $(CC) $(CFLAGS) -o $@ -c $<
```

# V - Git

Git, un gestionnaire de versions = **VCS** _(distribué = DVCS)_ : c'est un ensemble de 145 commandes indépendantes permettant d'archiver, de rechercher et de publier des ensembles d'objets représentant l'état global de l'espace de travail versionné à un instant donné (`add`, `mv`, `blame`, `rebase`, etc.).

Diaporama : http://julien.sopena.fr/enseignements/M2-SAR-Git/cours/01-Git/01-Git.pdf

`diff` (comparaison ligne par ligne) et `patch` (passe d'une version à une autre)

Vocabulaire :

- **Historique** : graphe orienté acyclique composé d'un ensemble de versions
- **Branche** d'une version v : sous graphe composé de l'ensemble des versions accessibles depuis v
- **Sous-branche** d'une branche
- **Tronc** ou branche principale : issue de la dernière version stable
- **Merge** : toute version ayant un degré sortant > 1 (fusion de **patchs** de plusieurs branches)
- Branche distante : une branche qui pointe sur des dépôts distants en lecture et/ou écriture.
- Branche locale : une branche propre au dépôt local
- Mutable : peut être supprimé
- Référence : clé calculée à partir de la fonction de hashage **SHA-1**
- Conflit : toute modification d'un fichier dans un dépôt qui n'a pas été élaborée à partir de la version actuelle du fichier sur ce défaut (édition, fusion)

Types d'objets :

- **Blob** : stocke le contenu des fichiers, ne dépend ni du nom ni de l'emplacement, différent à chaque révision (pas mutable)
- **Tree** : stocke l'arborescence, associe un nom de fichier/répertoire à chacun des pointeurs blobs/trees (pas mutable)
- **Commit** : stocke les versions du dépôt, contient un pointeur vers un tree, vers un ou plusieurs commits, un nom d'auteur, un nom de commiteur, une description (pas mutable)
- **Tag** : identifie certains objets / certaines versions du dépôt, contient une signature et un pointeur vers un blob, tree ou commit (mutable)

Commandes git :

- Les plus utiles : `add`, `branch`, `checkout`, `commit`, `config`, `diff`, `grep`, `help`, `init`, `log`, `mv`, `prune`, `rebase`, `reset`, `revert`, `rm`, `stash`, `status`, `tag`
- Les utiles : `am`, `clone`, `fetch`, `merge`, `pull`, `push`
- Les autres : `bisect`, `blame`, `gc`, `gui` et (`guitk`), `repack`, `rerere`
- **Dépôt** : `init`, `clone`, `fsck-object`, `repack`, `prune`, `add`, `commit`, `reset HEAD`
- **Commit** : `add`, `commit`, `reset HEAD`, `show`
- **Branche** : `branch`, `branch <nom>`, `branch -m`, `branch -d`, `checkout`, `show-branch`
- **Regrets** : `revert`, `amend`, `reset`, `reset --hard`, `reset --soft`
- Comparaison : `diff`, `diff --staged`, `diff HEAD`, `diff <commit>`, `diff <commit1> <commit2>`


```bash
# Création d'un dépôt
git init
git add .
git commit -a
```













.

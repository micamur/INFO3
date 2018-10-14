% Chapitre 1 - Introduction à l'environnement de programmation (Unix et compilation C)
% Georges-Pierre BONNEAU (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 1er Octobre 2018

# 1. Centralisation des ressources

**Unix** : système d'exploitation de ressources informatiques amenées à être partagées

Nécessité de pouvoir accéder à ses fichiers, et exécuter ses programmes quelque soit la machine devant laquelle on se trouve :

- Quelques "serveurs" centralisant les moyens : `mandelbrot`, `goedel`, `turing`, `mandelbrot.e.ujf-grenoble.fr`...
- Une multitute de "clients" permettant de se connecter à ses serveurs : les PC dans toutes les salles

# 2. Serveurs : Unix

Environnement de travail multi-utilisateurs, partage de ressources mémoire et CPU entre les utilisateurs

```shell
who -q #affiche tous les utilisateurs courants
```

Accès au serveur depuis le client

# 3. Intéraction avec le serveur

Pas de clics, pas d'icônes, pas de glissement d'icônes ; intéraction uniquement au clavier.

```shell
<prog> <arg1> <arg2> ... <argn> <return>
```

Le programme `prog` est exécuté en tenant compte des arguments `arg1`, ..., `argn`. Le programme peut "afficher des résultats", i.e. émettre des caractères vers la fenêtre.

\pagebreak

# 4. Système de fichiers

Les fichiers sont stockés sous forme hiérarchique par un arbre dont les feuilles désignent les fichiers, et les autres nœuds des « boites », appelées
répertoires, et permettant de classer l’information.

Une de ces boites vous est réservée: elle porte le nom de votre login, dont les données sont protégées avec des droit d’accès aux répertoires et fichiers.

Commandes utiles :

- Changement de répertoire : `cd <nom du répertoire`
- Répertoire courant : `./`
- Répertoire parent : `../`
- Désignation absolue d'un répertoire/fichier : `cd /users/john`
- Désignation relative : `cd ../users/john/images`
- Création d'un répertoire : `mkdir ../mary/music`
- Listing d'un répertoire : `ls`, `ls -la`
- Connaître l'emplacement du répertoire courant : `pwd`

# 5. Droits d'accès aux fichiers

Droits d'accès : en lecture, écriture, exécution / pour le propriétaire, le groupe, les autres

```shell
-rw-r--r--  1 xia  xia   3397 sept. 11 09:22 .zshrc
```

# 6. Création et édition d'un fichier

```shell
gedit <nom de fichier> # graphique
nano <nom de fichier> # dans le terminal
```

# 7. Variable d'environnement PATH

```shell
which <nom du programme # indique le répertoire ou se trouve le programme
echo $PATH # affiche la liste des répertoires
export PATH="" # changer la valeur de la variable
```

La variable PATH indique au système où se trouvent les programmes. Elle contient une liste de répertoires dans lesquels le système recherche les programmes. Elle est réinitialisée à chaque nouveau terminal.

# 8. Programmation

édition $\Leftrightarrow$ source $\rightarrow$ (compilation) $\rightarrow$ exécutable $\Rightarrow$ exécution

- Édition : `nedit <programme>.c`
- Compilation : `gcc <programme>.c  -o <programme>`
- Exécution : `./<programme>`

# 9. Métaphore avec un système dynamique en physique

Système dynamique continu

- État, variables d'état
  - Position, vitesse, temps
- Lois physiques faisant évoluer l'état, fonctions
  - m×a = g
  - v'(t) = a
  - p'(t) = v(t)
- Discrétisation
  - v(t+dt) = v(t) + dt×a
  - p(t+dt) = p(t) + dt×v

Système dynamique discret : le jeu d'échecs

- Position de chacune des 32 pièces définie par deux variables de types différents :
  - nom : "Roi Noir"
  - valeur : "A..H-1..8" ou "dehors"
- Actions : déplacements

- **Variable.** Association d'un nom et d'une valeur typée
- **État.** Ensemble des variables
- **Actions.** Déterminent l'évolution du système (avant/après une action)
  - *Actions élémentaires.* Un déplacement
  - *Actions composées.* Succession d'actions élémentaires
- La faisabilité d'une action dépend de l'état

Algorithme :

- État initial
- État final
- Spécification : décrit ce que l'algorithme fait, sans dire comment il le fait (état initial → état final)
- Assertion : propriété vérifiée par un état

Factoriel (= nom) :

- l'action (ÉTAT = donnée : un entier n + résultat : un entier n) **r ?**
- état initial : assertion (n entier naturel, r indéfini)
- état final : r vaut !n

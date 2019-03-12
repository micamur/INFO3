% Chapitre 1 - Titre
% Vincent danjean (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Lundi 21 Janvier 2019

# 0 - Informations

Mail : vincent.danjean@imag.fr

# 1 - Introduction aux systèmes d'exploitation (SE)

Exemples de systèmes d'exploitation (OS) : Linux, Windows, MacOS, Android (même noyau que Linux), iOS, Fushia, Solaris, AIX...

## I - À quoi sert un système d'exploitation (SE = OS) ?

- Simplifie la vie du programmeur (lien avec le matériel, drivers...)
- Abstraire le matériel :
  - Fichier/dossier : stockage
  - TCP/IP : réseau
  - Interfaces graphiques
  - I/O ou E/S
  - Processus : processeur/mémoire (partage d'un processeur par différents programmes)
- Arbitrage et protection

## II - Principe de fonctionnement d'un OS

On a besoin de certaines fonctionalités hard pour pouvoir construire un OS avec une protection entre les processus (W95 et Linux à partir du Intel i386).

1. Un processeur a **deux modes** de fonctionnement :

- **user** : instructions déjà vues en ALM1 (impossible de passer à l'autre mode)
- **noyau** : (kernel / superviseur / privilégié) : instructions supplémentaires, possiblité de passer à l'autre mode, reprogrammer les adresses accessibles.

- `swi` $\rightarrow$ nous amène dans un endroit précis du noyau
- Pour accéder aux périphériques exterieurs, on utilise `load` et `store` à des adresses spécifiques.

2. Un processeur avec une **MMU** (Memory Managment Unit) : en mode utilisateur on n'a pas accès à toutes les adresses $\rightarrow$ on ne peut pas dialoguer avec tout.

3. Une source d'interruption périodique :
quand le processeur reçoit un signal d'interruption (timer toutes les 10ms ou entrée clavier), il passe en mode noyau et lance une routine d'interruption au niveau de l'OS.

### III - Structure générale d'un OS

- User : programmes, libc
- Kernel : `pid`, `uid`, `time`, ordonnanceur, VFS (FAT, Ext4, NTFS, CDROM, DD) en lien avec le hardware et avec des drivers
- Hardware : processeur, disque, CD
- OS : Kernel + librairies (libc) + programmese

# 2 - Interruptions

## I - Rôles des interruptions

1) Réagir à des événements extérieurs
2) Élever les privilèges
3) Faire quelque chose quand le processeur détecte une erreur

> Si on fait un `load` ou un `store` à une adresse inexistante, si on utilise une instruction illégale (paramètre incorrect)... $\rightarrow$ le processeur utilise le méchanisme d'interruption pour "faire autre chose" et gérer l'erreur.

## II - Contraintes

- Le code à exécuter n'est pas choisi par le programme (car élévation de privilèges)
- Il faut être capable de revenir dans l'état exact dans lequel il était avant l'interruption (cela ne veut pas dire que l'on va retourner dedans si c'est le programme qui a causé cette même erreur)

> Dans le cas d'un accès à une adresse illégale -> segfault.
> Un autre exemple qu'on on accès à une adresse déplacée dans le swap : l'interruption ce charge de rappatrier dans la RAM puis dans recommencer à l'instruction précédente

## III - Les trois types d'interruptions

Vocabulaire :

- **Synchrone.** Le logiciel s'interrompt lui même. Donc la condition de revenir exactement au même état est plus faible. Elle n'est d'ailleurs pas respectée puisque l'interruption a une valeur de retour donc au moins un registre va changer.
- **Asynchrone.** Le matériel ne peut rien prévoir.
- **Explicite.** C'est un choix qui n'a pas été fait par le système.
- **Implicite.** C'est un choix qui a été fait par le système.

### 1) Interruptions logicielles

C'est une interruption synchrone et explicite.

- Appels systèmes (on peut générer cet appel manuellement en 3/4 lignes d'assembleur)
- Instruction assembleur spécifique / spéciale :
  - Quand on part (peu importe l'ordre) :
    - Sauver le mode actuel
    - Changer le mode (élévation de privilèges)
    - Sauver le `PC`
    - Changer le `PC` _dans la RAM ?_ à une adresse inaccessible en mode user :
      - Soit une adresse constante
      - Soit le chargement d'une valeur à une adresse constante
      - Soit le chargement d'une valeur d'un registre spécial
  - Retour d'interruption, quand on revient (on fait les deux en même temps) :
    - Remettre l'ancien mode (si on la faisait en deuxième cette instruction ne serait pas exécutée)
    - Remettre le `PC` (si on la faisait en deuxième on n'aurait plus les privilèges pour revenir à l'ancien `PC`)

### 2) Gestion des erreurs

C'est une interruption synchrone et implicite.

- Détection d'erreur par le processeur :
  - Sauver le mode actuel
  - Changer le mode (élévation de privilèges)
  - Sauver le `PC`
  - Changer le `PC` à une adresse inaccessible en mode user (souvent différente de celle utilisée pour les autres interruptions)
- Retour d'interruption :
  - Remettre l'ancien mode
  - Remettre le `PC`

### 3) Événement extérieur

C'est une interruption asynchrone et implicite.

- Interruption extérieure reçue par une broche d'interruption (une ou deux par processeur). On peut aussi avoir un contrôleur d'interruption.
- Signal sur la broche d'interruption
  - Sauver le mode actuel
  - Changer le mode (élévation de privilèges)
  - Sauver le `PC`
  - Changer le `PC` à une adresse inaccessible en mode user (souvent différente de celle utilisée pour les autres interruptions)
- Retour d'interruption :
  - Remettre l'ancien mode
  - Remettre le `PC`

Ici, le fait que ce soit asynchrone est problématique pour revenir dans l'état initial : des problèmes pour sauver PC et pour ne pas écraser les registres déjà utilisés

## IV - Techniques de réalisation des interruptions

### 1) Adresse du traitant

**Traitant** : la fonction exécutée quand une interruption survient.

- **indirecte** : `PC <- Mem[Constante]`, plusieurs instruction (utilisé sur les processeurs CISC : x86)
- **directe** : `PC <- Constante`, une seule instruction = un branchement (utilisé sur les processeurs RISC : Arm)

### 2) Sauvegarde et restauration des registres

Il faut remettre **tous** les registres à leur valeur initiale à la fin du traitant.

Les processeurs ont en général autant de registres de pile que de modes. Donc on va empiler les registres dans la pile propre au mode actuel -> la pile du système d'exploitation. `SP` correspond toujours à la pile dans le monde actuel.

- Duplication du registre `SP`
- Duplication d'autres registres et/ou utilisation de la pile privilégiée

USR     | FIQ     | IRQ     | SVC
--------|---------|---------|--------
R0-R7   |         |         |
R8-R12  | R8-R12  |         |
R13-R14 | R13-R14 | R13-R14 | R13-R14
R15     |         |         |
CPSR    |         |         |
        | SPSR    | SPSR    | SPSR

_Sauvegarde des registres en fonction des modes dans un processeur ARM_

```ARM
traitant_ARM:
  stmfd sp!, {r0-r11, fp, lr}
  bl    vrai_traitant
  ldmfd sp!, {r0-r11, fp, lr}
  sub   pc, lr, #4
```

### 3) Autorisation et masquage

```
   (Rinst <- [PC])
          |
          v
 (décode Rinst/PC++)
    |     |     |
    v     v     v
  (add, (bl,b) (ldr,
   sub)   |     str)
    |     |     |
    └-----┼-----┘
       ┌--┴--┐
pas    |     |
d'intr |     | interruption
et I=0 |     | et bit I = 1
       v     |
     début   |
             v
       (SPSR <- CPSR,
        CPSR <- mode IRQ,
        LR   <- PC,
        PC   <- 018)
             |
             v
           début
```

```
CPSR :
|ZNCV| ... |F|I|mode| I permet d'empêcher une
interruption pendant qu'une autre est en cours
```

## V - La gestion mémoire

### 1) Objectifs

Protection/sécurité : user/kernel et entre processus

### 2) Principes

#### a. Segmentation

On ajoute au processeur une MMU (Memory Managment Unit) qui contrôle le bus d'adresse

```
ldr r0, s1:0x20

  if (adr_logique >= taille)
    exception()
  else if (mode_demande incompatible perm)
    exception()
  else
    accès(base + adr_logique)
```

Le mécanisme de segmentation est vite limité par le nombre de segments et augmenter ce nombre n'est pas non plus une bonne solution car ce serait trop coûteux en mémoire.

#### b. Pagination

On découpe la mémoire en pages (frames) de taille égale (souvent de 4kio = 2^12).

Le processus découpe lui aussi sa mémoire en pages logiques de même taille.

Il reste juste à associer chaque page logique utilisé par le processus à une page de la mémoire.

Pour obtenir le numéro de la page associée à une adresse il suffit de diviser (division entière) l'adresse par la taille de la page. C'est facile puisque la taille d'une page est en puissance de 2.

Au final le numéro de la page correspond aux bits 31 à 12 de l'adresse logique. Puis les bits 11 à 0 correspondent au déplacement dans la page (position dans la page).

Pour les adresses physiques le déplacement est le même. Il reste à trouver le numéro de page physique.

Pour transformer l'adresse logique en adresse physique on peut imaginer un tableau (de taille 2^20) associatif qui associe chaque indice (adresse logique) à l'adresse (numéro de page) physique (sur 20 bits) correspondante et perm (sur 12 bits). Au total le tableau fait 4 Mio. Il faut un tableau pour chaque processus.

4Mio est trop lourd surtout que la plupart des processus n'utiliseront pas autant de pages. On découpe donc le tableau en 1024 tables de 1024 lignes et une 1025ème table qui est chargée de lier les 1024 autres tables (de 4kio).

La 1025ème table contient l'adresse vers les autres tables (numéro de page physique pour économiser de la mémoire. Possible car chaque sous-table est stocké dans une page exactement) ainsi qu'un bit de présence. Si ce bit est à 0, il n'y a pas de sous table à cette entrée : on économise énormément de sous-tables.

Puisqu'une sous-table est de 4kio on utilise une page pour stocker une sous-table.

Le registre CR3 contient la page de la 1025ème table du processus en cours.

```
[     l     | offset ]
[  i  |  j  | offset ]
  10    10      12

l = n° page logique
i = reste de l/1024
i = quotient l%1024
l = i*1024 + j
```

```
Dans les 12 bits (pas pour l'offset de l'adresse logique, mais pour le 12 bits restants dans les sous tables) :
P, bit de présence
R/W, lecture / écriture
U/S, utilisateur / superuser
... (page 173 du manuel sur moodle)
```

#### c. Translation Look-aside Buffer (TLB)

C'est un cache pour les correspondances page logique / page physique

page logique | page physique | info
:-: | :-: | :-:
...  |   |  
...  |   |  

Au changement de contexte (passer d'un processus à un autre) on dois recalculer la table de correspondances.

Cette table compte en général environ 10 entrées.

Pour utiliser le processeur au meilleur de ses capacités il faut utiliser régulièrement les mêmes pages.

# 2 - Les caches

## I - Introduction

Tout ne fonctionne pas à la même vitesse donc on essaye d'accélérer ce qui est lent.

## II - Principe général

### 1) Principes sous-jacent

- localité temporelle ( ? )
- localité spatiale (on accède souvent aux adresses contiguës)

### 2) Fonctionnement général

Schéma

L'algorithme Last Recently Used permet de choisir quelle information enlever du cache quand il est pleins (on cherche à trouver quelle information seras utilisée le plus loin dans le futur. Pour ça on s'inspire du passé et on enlève ce qui n'a pas été utilisé récemment dans le passé). Cet algorithme, pour rester très rapide fais beaucoup d'approximations.

À faire : Traduire une adresse logique en une adresse physique avec du code C.
À faire : Trouver les caractéristiques du cache de notre processeur (`cat /proc/cpuinfo`).

_Mercredi de la rentrée, contrôle en début de cours_

## III - Caches mémoire des processeurs

```
adr  ------------------------>
data <----------------------->
PROC <- L1 <- L2 <- L3 <- RAM
```

On aimerait bien combiner la taille du L3 et la vitesse du L1 mais c'est trop cher et ça consomme trop. Le L1 est quasi aussi rapide que le processeur.

### 1) Principes de fonctionnement

Un cache peut être considéré comme un grand tableau et chaque entrée est appelée une ligne de cache. Chaque ligne fait quelques dizaines d'octets, 128 octets de données par exemple + une adresse + bit de validité.

Exemple :

- L1 : 32 kio de cache -> 256 lignes de 128 octets
- L2 : 8 Mio -> ~ 16000 lignes de 128 octets

Une adresse ne peut être mise qu'à quelques lignes du cache, ainsi on fait peu de comparaisons à chaque couche.

### 2) Différents types de cache

- **direct** : chaque adresse ne peut aller que dans une ligne du cache.

```
adresse : 31 (tag/étiquette) 10 | 9 (ligne) 7 | 6 --- 0
```

On commence par regarder la ligne, puis le bit de validité, puis le tag.

Le problème principal de ce système, c'est que deux variables peuvent se battre pour la même ligne de cache, le rendant complètement inefficace.

- **associatif** : chaque adresse peut aller dans n'importe quelle ligne de cache (ce serait bien mais en pratique on n'y arrive pas)

- **associatif par ensemble** : chaque adresse peut aller dans un groupe de ligne de cache. Par exemple on peut faire deux groupes pour diviser par deux le nombre de comparaisons à faire

```
adresse : 31 tag 8 | 7 ensemble | 6 --- 0
```

Cache à 8 voie = Groupe de taille 8 lignes -> 8 comparaisons à faire à chaque fois

### 3) Défauts de cache

Quand l'information n'est pas dans le cache on a un défaut de cache.

- **obligatoire** : le premier accès, forcément la valeur n'est pas encore dans le cache
- **capacitif** : cache plein, il a dû être vidé
- **conflictuel** : un ensemble est plein, une valeur a été écrasée
- **cohérence** (uniquement en multiprocesseur) : une ligne de cache peut être invalidée par un autre processeur

### 4) Écriture

- **immédiate** (_write-through_) : on écrit localement et pas dans la mémoire (bien pour la vidéo)
- **différée** (_write-back_) :
- pour le matériel on ne met surtout pas dans le cache, on ne peut pas prévoir













Bleu, Vert, Orange, Rose, Jaune, Bleu vif, Cyan, Jaune foncé, Rouge, Vert clair, Violet, Bleu foncé, Vert, Rouge clair, Vert vif, Bleu pastel.

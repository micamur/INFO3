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





Bleu, Vert, Orange, Rose, Jaune, Bleu vif, Cyan, Jaune foncé, Rouge, Vert clair, Violet, Bleu foncé, Vert, Rouge clair, Vert vif, Bleu pastel.

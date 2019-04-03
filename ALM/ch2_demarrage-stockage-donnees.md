% Chapitre 2 - Démarrage et stockage de données
% Vincent danjean (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Mercredi 27 Mars 2019

# I - Démarrage d'un ordinateur

1. Mise sous tension et reset
2. Initialisation de registres :
    - PC
    - État : mode superviseur et interruptions bloquées
    - {cr3} : nom dépend de l'ordinateur
3. Exécution de la ROM (Read Only Memory) (BIOS / UEFI)
    - Initialiser des composants (contrôleur USB)
    - Chargement du bootloader (GRUB, avant LILO, celui de MS-DOS)

> Flasher son BIOS = ré-écrire la ROM

4. Exécution du bootloader
    - Choix du SE
    - Chargement du SE
5. Exécution du SE
    - Initialisation du matériel
    - Initialisation des interruptions
    - Démarrage du processus initial (passage au mode _user_)
6. Processus initial (sous Linux : _systemd_)
    - _fin des mises à jour sous Windows_
    - démarrage service / démons
    - démarrage session / login

|                         Étapes                          |
|:-------------------------------------------------------:|
|                ROM (BIOS/UEFI) (en ROM)                 |
|                            v                            |
|             ↻ Bootloader/UEFI (sur disque)              |
|                            v                            |
|          SE (init noyau et ramfs) (sur disque)          |
|                            v                            |
| Montage `/` et chargement modules pour matériel détecté |
|                            v                            |
|                     Processus init                      |

On met le maximum de choses en modules pour ne pas charger des fonctionnalités inutiles.

Ramfs : mini système de fichiers sur lequel on a les drivers dont on a besoin

# II - Disques et partitions

## 1) Matériel

Accès par secteur (`512 o` ou `4 kio`) : on cherge un secteur du disque vers la mémoire, puis on le change puis on le recharge.

## 2) Partitions

### MS DOS

La table des partitions est stockée dans le premier secteur :

- 4 zones dans le premier secteur initialement prévues pour 4 partitions primaires
- ou 3 partition primaires + 1 étendue (contient des partitions logiques)

### GPT

- Plus récent, permet de créer 128 partitions
- La table des partitions au début est dupliquée à la fin

## 3) RAID

On parlera bien de disques distincts dans cette partie, si on utilise des partitions pour émuler des disques le système perd tout son intérêt.

- RAID0 : deux disques de taille N à la suite, aucune redondance mais ils sont interlacés pour former un "disque" de taille 2N.
  - Interêt : paralleliser les accès en écriture en espérant avoir un débit plus important.
  - Faiblesse : aucune sécurité, même moins qu'avec un seul disque.
- RAID1 : deux disques de taille N forment un seul "disque" de taiile N : les données sont dupliquées.
  - Intérêt : sécurité, si un disque lâche on peut tout récupérer.
  - Faiblesse : la même donnée doit être écrite sur les deux disques, donc plus lent.
- On peut combiner les deux de plusieurs manières pour faire du RAID0+1 ou RAID1+0.
- RAID2, RAID3, RAID4 ne sont plus utilisés, ils fonctionnent de la ême manière que le RAID5 mais les sommes de contrôle sont moint bien réparties.
- RAID5 : si on a au $n \ge 3$ disques de taille $N$ on créé un disque de taille $(n-1) \times N$.
  - Intérêt : on protège un disque, intéressant pour l'archivage, permet de stocker plus que RAID1 pour $n > 3$.
  - Faiblesse : débit plus lent.

> Sachant $a = b \oplus c$, on a aussi $b = a \oplus c$ et $c = a \oplus b$ ce qui nous permet à partir de n'importe quelle paire de deux éléments de retrouver le troisième.

- RAID6 : $n$ disques forment un disque de taille $(n-2) \times N$ mais on peut perdre jusqu'à $2$ disques simultanément et quand même tout récupérer.
- Typiquement, on peut mettre la moitié de son espace disque en RAID0+1 pour avoir de bonnes performances et l'autre moitié en RAID5 ou RAID6 pour les données.

## 4) LVM

_Physical Volumes_ (PV) rassemblés dans un _Volume Group_ (VG) à partir duquel on peut créer des _Logical Volumes_ (LV).

L'avantage est qu'on peut directement agrandir ou réduire les LV "à chaud".

# III - Systèmes de fichiers

*Exemple.* `ext4` (Linux), `NTFS`, `FAT(32)` (Windows), `HFS` (Mac), `ISO9660`, `UDF`, `Lustre`, `NFS`, `exFAT`, etc.

Organisation des données et métadonnées.

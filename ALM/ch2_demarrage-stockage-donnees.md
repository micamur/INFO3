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



.

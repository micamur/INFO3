% Chapitre 1 - Mobilité, multimédia, données ouvertes
% Guillaume ALLEGRE (cours) - Mica MURPHY (note) - Antoine SAGET (note)
% Mercredi 23 Janvier 2019

# 0 - Informations

Mail : Guillaume.Allegre@silecs.info

Cours sur Moodle

Données ouvertes (DO) : Guilaume Allègre
Mobilité, multimédia (MM) : Sébastien Pittion

8 cours : 4 cours DO (Web, PHP, données ouvertes) + 4 cours MM (développement mobile)

6 TP : 3 DO + 3 MM

Technologies utilisées : PHP pour le serveur (simple à intégrer à un site web) et JavaScript pour le client

Architecture choisie : Serveur web Apache et scripting PHP

# 1 - Données ouvertes

"Open Data" : https://www.data.gouv.fr/fr, http://data.beta.metropolegrenoble.fr

Données collaboratives : Wikidata, OpenStreetMap, The Movie Database...

API (Application Programmeur Interfaces) : une structure d'interrogation

Une licence apporte souvent un engagement : à mettre à disposition le travail dérivé sur la même plateforme, sous la même licence...

Quand on chercher à utiliser des données on s'intéresse à la technologie utilisée : _problème technique_. On s'intéresse également à la license : _problème juridique_.

HTTP : un protocole flexible pour les communications web

# 2 - Architecture web

Apache, Perl / PHP / Python, MariaDB / MySQL, HTTP / HTTPS, HTML...

# 3 - Le protocole HTTP

Méthodes principales HTTP : GET, POST, HEAD, PUT, DELETE

Méthode sûre : par principe, ne doit rien modifier sur le serveur (GET, HEAD)

Méthode **indempotente** : l'envoi répété donne le même résultat qu'un envoi unique (GET, HEAD, PUT, DELETE)

Anatomie d'une URL : protocole, serveur web, port IP, chemin de la ressource, paramètres, repère de la ressource à l'intérieur de la page

Terminologie : URL (Locator) + URN (Name) = URI (Identifier)

Codes de diagnostic : 1xx (informational), 2xx (success), 3xx (redirection), 4xx (client error), 5xx (server error)

# 4 - HTML - Hypertext Markup Language

**Vocabulaire** : éléments et balises, balises ouvrantes/fermantes/autofermantes, attributs et valeurs

Objets "multimédia" de HTML5 : `<audio>`, `<video>`, `<canvas>` + intéractions JS

Web "humain" : HTML, images et autres fichiers binaires, CSS, JavaScript, download, upload

Web "machine" : XML, JSON, widgets (client/serveur), API (serveur/serveur)

# 5 - Les feuilles de style CSS (Cascading Style Sheet)

Documentation : http://www.w3.org/TR/html401/present/styles.html, http://www.w3schools.com/cssref/css_selectors.asp

Appels CSS : _inline_ (déconseillé), style en en-tête (`<style>` dans `<head>`), feuilles de style externes (`<link>` dans `<head>`)

Composition d'une règle CSS : un **sélecteur** (`type`, `.class`, `#id`) et des **propriétés** (`color: red`, `display: hidden`...)

# 6 - Le Langage PHP

Documentation : http://fr.php.net/manual/fr

- Code PHP entre `<?php ... ?>`
- Sensible à la casse : `$a` $\ne$ `$A`
- Instructions terminées par `;`
- Blocs délimités par `{...}`
- Commentaires avec `\\` (inline) ou `/*...*/` (multiline)

## a. Les données

## b. Les formulaires HTML et données HTTP

## c. Les fonctions

## d. Structures PHP

```php
$bar = 1;
echo $bar;

$val = ["a", "b", "c"];
$val = array("a", "b", "c");
echo $val[0];

foreach ($tableau as $valeur) {
  echo "$valeur\n";
}

$annuaire = array([
  "nom" => "Hendrix",
  "prenom" => "Jimmy",
  "notes" => [
    "maths" => 15,
    "francais" => 7,
    "anglais" => 18
  ]
], [
  "nom" => "Holmes",
  "prenom" => "Sherlock",
  "notes" => [
    "maths" => 17,
    "francais" => 15,
    "anglais" => 18
  ]
], [
  "nom" => "Poppins",
  "prenom" => "Mary",
  "notes" => [
    "maths" => 0,
    "francais" => 0,
    "anglais" => 20
  ]
]);

print_r($annuaire);

foreach ($tableau as $cle => $valeur) {
  echo "$cle -> $valeur\n";
}
```

On peut mettre des choses très différentes dans un annuaire mais se ne serait plus des données structurées.

On peut faire des tableau encore plus structurés, à plus de 2 niveaux.

`print_r` : un print verbeux, pas mal pour les tableaux.

```
class EntreeAnnuaire extends stdClass
{
  public $nom;
  public $prenom;
  public $notes;

  public function validate()
  {
    ...
  }
}
```

## e. Les formats de données

Pour déterminer un type de fichiers : extension du fichier (métadonnée), sa signature, son type MIME (Multipurpose Internet Mail Extensions)

> Pour connaître le type MIME : `file -i`
>
> Il peut contenir : content-type, protocoles, applications le prenant en charge...

Principaux formats de données : CSV, JSON, XML...

### CSV

- format tabulé simple et lisible à l'œil humain
- parsable assez facilement
- idéal pour le prototypage
- lisible dans un tableur
- en PHP :
  - `fputcsv()` formate une ligne en CSV et l'écrit dans un fichier
  - `fgetcsv()` analyse une chaîne de caractères CSV dans un tableau
  - `str_getcsv()` obtient une ligne depuis un pointeur de fichier et l'analyse pour des champs CSV
  - _Exemple sur le diapo_

Fonctions bash utiles :

```bash
grep # garde lignes correspondant au motif
cut  # conserve les colonnes données
head # premières lignes
tail # dernières lignes
sort # trie
uniq # enlève les doublons
```

### Formats tableur

XLS (Excel), XLSX (Excel en XML), ODS (LibreOffice, XML)

### JSON

- Format de sérialisation de données structurées
- Produit une chaîne de caractères lisible mais parsable par une machine
- Provient de JavaScript
- Intégré à tous les langages modernes
- En PHP : `json_encode()`, `json_decode()`
- En JS : `JSON.parse()`

### XML

Format robuste et générique

Outils : éditeurs (`kate`, `xmlcopyeditor`), validation en ligne (http://www.utilities-online.info/xsdvalidation/), en ligne de commande (`xmllint`)

# 7 - API, webservices, etc.

Bases de données, métadonnées, `curl`












.

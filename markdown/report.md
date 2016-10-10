# Section

## Subsection

Le plugin Wireshark devra tourner sur une plateforme PC dont Windows sera l'OS est le plus fréquent.
S'attendre à devoir compiler le plugin pour Windows (d'où le choix de *cmake* plus bas). Cela a déjà été anticipé du fait de la lenteur de l'émulation de Cygwin et de la mention d'une utilisation potentielle sous Windows.

## Subsection

Bullet list size [4]:

* *"Full featured and cross-plateform system"*
  * Dont la génèration de projets pour differents IDEs;
* **S'intégère bien avec les outils Windows contrairement à *Autotools***;
* Mature et presque un standard;
* Nous savons l'utiliser;

Bullet list size [1]:

* Nous avons réussi à le configurer pour compiler le plugin sans les sources de Wireshark

Two Bullet lists size [1]:

* Nous avons réussi à le configurer pour compiler le plugin sans les sources de Wireshark
* Nous avons réussi à le configurer pour compiler le plugin sans les sources de Wireshark

# Section

## Subsection

> Linking [our plugin] statically or dynamically with other modules is making a combined work based on [Wireshark]. Thus, the terms and conditions of the GNU General Public License cover the whole combination.<br/>
> **- gnu.org**

Wireshark étant sous licence GPL, le plugin devra l'être aussi.

## Subsection

En revanche **l'entrée et la sortie** des données par ce plugin **ne sont pas sous licence**.
Donc la définition du ou des protocoles propriétaires, ce fera via un ou des fichiers de configuration.

# Section

Travaillant sur des protocoles connus de Wireshark (excepté ARION), leurs paquets sont donc pris en charge afin d'être validé. Nous nous plaçons alors au dessus de la couche de transport pour les protocoles TCP/UDP et au dessus de la couche internet (IP) pour AFDX/ARION. Cela afin d'y effectuer des traitements plus spécifiques nottament sur leurs payloads.

## Subsection

Difficile de trouver la bonne documentation pour AFDX et ARION.<br/>
A la suite de cela la documentation AFDX fut fournie par M. Martinier pendant la réunion.

Bllet list:

* Pas de spécification pour les payloads TCP/UDP
  * Dépendra des applicatifs utilisateurs
* Payload normalisé pour AFDX/ARION
  * Les données suivent une structure spécifiée dans la norme AFDX

## Subsection

Pour l'instant, on se limite à un voir plusieurs fichiers de configuration (un pour chaque protocol par exemple), décrivant la manière de disséquer le Payload.

# Section

## Subsection

* Plan de validation du Plugin Wireshark comme premier jet (doit être livré le 30/09)

## Subsection

* Fichier de configuration décrivant la manière de disséquer le Payload de chaque protocole
* Prise en charge du Payload structuré des protocoles AFDX/ARION

# Section

If the input or output format is not specified explicitly, `pandoc`
will attempt to guess it from the extensions of
the input and output filenames.  Thus, for example,

```
    pandoc -o hello.tex hello.txt 123456 789 456 coucou
```

Ceci est la description d'un deuxieme bloc de code:

```
	premiere commande 3.4 fdlfmk

	Deuxieme commande 12.5 -fdfk -fdklfd -fd

	$Deuxieme commande 123

```

Ceci est la description d'un deuxieme bloc de code:

```
	$ Premiere commande

	$ Deuxieme commande<bt> 123456 1234456

	$ function coucou() {}

	/* Commentaire 3eme commande */

	$ Troisieme commande
```

Ceci est un tableau:

|Nom  |Prenom  |Profession |
|--|--|--|
|VENRIES  |Thomas  |Ingenieure |
|VENRIES  |Thomas  |Ingenieure |
|VENRIES  |Thomas  |Ingenieure |
|VENRIES  |Thomas  |Ingenieure |

Ceci est un tableau plus hardcore:


|Nom  |Prenom  |Profession |Benchmark |Tag Version|Date
|--|--|--|--|--|--|
|VENRIES  |Thomas  |Ingenieure |0.5%	|v-5.5		| 03-09-2016
|VENRIES  |Thomas  |Ingenieure |0.6%	|v-322		| 03-09-2016
|VENRIES  |Thomas  |Ingenieure |23.56%	|v-1.3.1.5	| 03-09-2016
|VENRIES  |Thomas  |Ingenieure |0.05%	|v-1.2		| 03-09-2016

Ceci est un [lien](http://google.fr).

Ceci est une citation:

> Je suis un<br/>
> Bloc de<br/>
> Citation

Ceci est un `directory`.

Ceci est une liste simple:

* Text
* Text
* Text
* Text

Ceci est une liste difficile:

* Text
	* Text
	* Text
* Text
	* Text
	* Text
		* Text
		* Text
			* Text
			* Text
* Text
* Text
* Text
* Text
	* Text
		* Text

Ceci est une liste numérotée difficile:

1. Text
	* Text
	* Text
	* Text
2. Text
3. Text
	1. Text
	2. Text
	3. Text
4. Text
5. Text
6. Text


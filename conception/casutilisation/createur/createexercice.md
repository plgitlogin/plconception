# Recherche et Création d'un exercice


Objectif : Permet à un créateur de trouver (ou créer) l'exercice dont il a besoin.

Résumé général : 
- chercher un exercice qui répond à son besoin. 
	Cette recherche est multicritère, elle peut se faire par niveaux, discipline, grains, thématique, difficulté et plain text (texte brut)
	Si la recherche n'a pas donné le résultat escompté, le créateur fait une recherche sur les exercices en cours de création, c'est à dire les exercices qui font l'objet d'une demande de création. S'il trouve l'exercice qu'il veut dans les exercices en cours de création, il peut "upvote" le topic de cet exercice.
	Si l'exercice est trouvé fin du cas d'utilisation  
Sinon   
On fait une [demande de création](../../concept/demande.md) d'un exercice avec une description de l'exercice voulu. Après la création de la demande, d'autres utilisateurs doivent pouvoir discuter avec l'auteur (la demande se fait sous forme d'un forum style stackoverflow) de la demande afin de lui demander plus de détails ou de précision sur l'exercice qu'il souahite créer ou tout simplement en discuter. 
Après avoir fait le demande de création, le créateur peut écrire son exercice lui même ou attendre qu'un autre créateur le lui écrit. Lors de la création de l'exercice, le créateur doit choisir un type d'exercice afin d'y associer un dockerfile. S'il ne connait pas le type de son exercice ou si le type n'existe pas, il peut importer un dockerfile directement. Il doit donc obligatoirment choisir soit un type, soit un dockerfile.
- phase de validation qui consiste à proposer l'exercice pour qu'il soit public.  

Lorsque le créateur sauvegarde un exercice, si son karma est suffisant l'exercice est directement validé. Sinon un enseignant avec un karma suffisant devra valider l'exercice.

Dans la page d'edition on trouve en plus de l'éditeur et de la prévisualisation, deux boutons, preview qui permet de tester l'exercice et sauvegarde qui permet de sauvegarder le fichier. La preview permet de vérifier le bon fonctionnement de l'exercice. 



# Données :

Acteur Principal : Créateur

Acteur secondaire : Admin

Concurrence : Non

Déclencheur : Se déclenche lorsqu'un créateur veut créer un exercice.



## Pré-conditions :

### Données d'entrées :

	Avoir le rôle de créateur dans la base de données.


## Post Conditions :

### Données sortie :

	Exercice crée

En cas de succès : On sauvegarde l'exercice crée dans la base de données. Ici un succès est déterminé par l'absence d'erreurs de syntaxe dans l'énoncé de l'exercice. Le fichier en cours d'édition sera sauvegardé toutes les X=10 secondes s'il y a eu une modification ou s'il y a un signal de l'éditeur. Dans le cas où le fichier n'a pas de répertoire de stockage (il est uniquement dans la zone tampon) il faut demander dans quel répertoire le sauvegarder en proposant un navigateur de répertoires et en demandant le nom du fichier. Le créateur peut donner à l'exercice un ou plusieurs tag(pas obligatoire), s'il ne le fait pas l'exercice sera moins bien répertorié lors d'une recherche d'exercice.

En cas d'échec : Grâce à la [sauvegarde continue](../../concept/zonetampon.md) le créateur ne perd pas les modifications qu'il a effectué en "local". La base de données reste inchangée. 


# Navigation / IHM  :

Principe de navigation du scénario principal, organisation de l'IHM.

La phase de conception commence quand on clique dans l'interface sur le menu créer exercice.
Le système ouvre la page edition avec un fichier untitled.pl 
La preview permet de vérifier le bon fonctionnement de l'exercice. 

# Scénarios :

## MAIN SUCCESS SCENARIO

Step    Action

S    Le créateur fait une demande de création, l'exercice est créé par lui même ou un autre créateur et est sauvegardé, l'exercice est en attente de validation ou directmeent validé (selon le karma du créateur qui a créer l'exercice)

1    Ce cas d'utilisation commence quand le créateur fait la demande de création d'un exercice qu'il souhaite avoir et clique sur le bouton "ask" ou quand on entre l'url d'édition de l'exercice dans un navigateur.

2    Soit le créateur fait une demande de création, soit il fait une demande puis crée lui même l'exercice.

3    Le créateur peut prévisualiser l'exercice qu'il est en train de créer s'il crée lui même son exercice.

4    Ce cas d'utilisation se finit lorsque le créateur a sauvegardé son exercice.


EXTENSION SCENARIOS

Step    Branching Condition

1	 Lorsque le créateur part avant d'avoir validé ses modifications. Etape 4

2	 Lorsque le créateur veut chercher un exercice. Etape 1

na.  Action causing branching:

1 : L'éditeur grâce à la [sauvegarde continue](../../concept/zonetampon.md), a gardé en mémoire l'exercice que le créateur a commencé à écrire et les affiche.

2 : Le créateur trouve l'exercice qu'il cherche



# RELATED INFORMATION

Include Use Cases    [Sauvegarde continu](../../concept/zonetampon.md)
 

<!--- 
Author : Raphael
Validator : Hugo
-->

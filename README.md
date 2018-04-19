## Week n°3 on Day n°4 - THP by Team BDX - Tic Tac Toe

## Objet du projet

Ce projet rentre dans le cadre du travail demandé lors du jour n°4 de la semaine n°3 du cursus THP. Il a pour but de créer un célèbre jeu : le Tic Tac Toe.

## Pré-requis

Pour faire fonctionner ce programme, veuillez cloner ce repo sur votre machine avec la commande suivante :

```
  $ git clone https://github.com/iMassim0/W3D4_TeamBDX_TicTacToe
```

Ensuite, le jeu utilise une gem supplémentaire pour agrémenter un peu le jeu : color_text. Pour cela, effectuez un :

```
  $ bundle install
```

## Fonctionnement du jeu

Lors du lancement du jeu, celui-ci demande le pseudo du joueur qui jouera en premier, et lui demande de choisir entre les marques X ou O.

Ensuite, le jeu demandera le pseudo du second joueur, qui jouera forcement avec la marque restante.

Lancement du jeu ! Chacun son tour, chaque joueur sélectionne une case de 1 à 9 pour la remplir avec son symbole. Deux cas de fin de partie sont possibles :

  - Un des joueurs gagne, son compteur de points est incrémenté et le jeu est terminé et propose une nouvelle partie.

  - Aucun des joueurs n'a gagné, l'égalité est délcarée et le jeu est terminé et propose une nouvelle partie.

Le nombre de parties rémportées est comptabilisé à chaque lancement du jeu !

## Conditions de test du jeu pour les corrections

**Lancez le fichier `TicTacToe.rb` à la racine du repo.**

## Contributeurs

@bab - Baptiste ROGEON

@massimo - Maxime FLEURY

<p align="center">
  <img src="THP_BDX.png"/>
</p>

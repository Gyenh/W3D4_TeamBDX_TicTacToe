require 'color_text'
require_relative 'Classes/Board'       # On effectue le lien avec le fichier de chaque Classe.
require_relative 'Classes/BoardCase'
require_relative 'Classes/Game'
require_relative 'Classes/Player'

game = Game.new                        # On crée une nouvelle partie.
game.go                                # On lance le jeu !!

class Board

end

class BoardCase

end

class Player

  attr_accessor :pname, :choice, :victory

  def initialize(pname)
    @pname = pname
    @choice = ""
    @victory = false
  end

  def info
    puts @pname
    puts "Choice is :#{@choice}."
    puts @victory
  end

  def get_choice
    puts "\nSelect your next position :"
    board.show
    @choice = (gets.chomp).to_i
    board.set_cae_value
    board.show
  end

end

class Game





end

# Init du game
game = Game.new

# Welcome !
puts "Welcome to the BDX Tic-Tac-Toe ! Have fun with our progZ !"

# Demande noms et Ajout des players dans le game
puts "\nPlease, put the first player name :"
p_one = Player.new((gets.chomp).to_s)
puts "Please, put the second player name :"
p_two = Player.new((gets.chomp).to_s)

puts p_one.info
puts p_two.info

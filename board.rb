

class BoardCase
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name.to_i
    @value = value
  end

  def is_playable?(c_number)
    if c_number.value.to_i == c_number.name
      return true
    else
      return false
    end
  end

end

class Board < BoardCase

  def initialize()
  end

  def show_board(cases)
    a = cases[0]
    b = cases[1]
    c = cases[2]
    d = cases[3]
    e = cases[4]
    f = cases[5]
    g = cases[6]
    h = cases[7]
    i = cases[8]

    puts "     |     |     "
    puts "  #{a.value}  |  #{b.value}  |  #{c.value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{d.value}  |  #{e.value}  |  #{f.value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{g.value}  |  #{h.value}  |  #{i.value}  "
    puts "     |     |     "
  end

  def set_case_value(c_number, pmark)
    if is_playable?(c_number)
      c_number.value = "#{pmark}"
    end
  end

end

bc_1 = BoardCase.new(1, "1")
bc_2 = BoardCase.new(2, "2")
bc_3 = BoardCase.new(3, "3")
bc_4 = BoardCase.new(4, "4")
bc_5 = BoardCase.new(5, "5")
bc_6 = BoardCase.new(6, "6")
bc_7 = BoardCase.new(7, "7")
bc_8 = BoardCase.new(8, "8")
bc_9 = BoardCase.new(9, "9")

cases = [bc_1, bc_2, bc_3, bc_4, bc_5, bc_6, bc_7, bc_8, bc_9]
yaya = Board.new
yaya.show_board(cases)
yaya.set_case_value(bc_1, "X")
yaya.show_board(cases)

class Board

end

class BoardCase

end

class Player

  attr_accessor :pname, :choice
  attr_writer :victory

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

    @choice = (gets.chomp).to_i
    board.set_cae_value

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


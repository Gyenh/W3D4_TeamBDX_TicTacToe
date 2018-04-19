class Player

@@player = 0

  attr_accessor :pname, :pmark, :victory

  def initialize()
    @pname = ""
    @pmark = ""
    @victory = false
    @@player += 1
  end

  def infos()
    puts "\nPlease, put the player name :"
    @pname = (gets.chomp).to_s
    if @@player == 1
      puts "\nWhich mark do you want ? X or O ?"
      while @pmark != "X" && @pmark != "O" do
         @pmark = (gets.chomp).to_s.capitalize
      end
    else
      p_one[@pmark] == "X" ? @pmark = "O" : @pmark = "X"
    end
    puts "#{@pname} jouera avec la marque #{@pmark} !"
  end



end

class Game





end


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

class Board

  attr_accessor :cases, :choice

  def initialize()
    bc_1 = BoardCase.new(1, "1")
    bc_2 = BoardCase.new(2, "2")
    bc_3 = BoardCase.new(3, "3")
    bc_4 = BoardCase.new(4, "4")
    bc_5 = BoardCase.new(5, "5")
    bc_6 = BoardCase.new(6, "6")
    bc_7 = BoardCase.new(7, "7")
    bc_8 = BoardCase.new(8, "8")
    bc_9 = BoardCase.new(9, "9")
    @cases = [bc_1, bc_2, bc_3, bc_4, bc_5, bc_6, bc_7, bc_8, bc_9]
  end

  def show_board()
    # a = cases[0]
    # b = cases[1]
    # c = cases[2]
    # d = cases[3]
    # e = cases[4]
    # f = cases[5]
    # g = cases[6]
    # h = cases[7]
    # i = cases[8]

    puts "     |     |     "
    puts "  #{cases[0].value}  |  #{cases[1].value}  |  #{cases[2].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cases[3].value}  |  #{cases[4].value}  |  #{cases[5].value}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{cases[6].value}  |  #{cases[7].value}  |  #{cases[8].value}  "
    puts "     |     |     "
  end

  def get_player_choice
    puts "\nSelect your next position :"
    @choice = (gets.chomp).to_i
    self.set_case_value(@choice, @pmark)
    self.show_board
  end

  def set_case_value(c_number, pmark)
    if is_playable?(c_number)
      c_number.value = pmark
    end
  end

end

#
# # Init du game
# game = Game.new


yaya = Board.new
yaya.show_board()
# yaya.set_case_value()
p yaya.cases.class

# Welcome !
puts "Welcome to the BDX Tic-Tac-Toe ! Have fun with our progZ !"

# Demande noms et Ajout des players dans le game

# p_one = Player.new()
# p_one.infos
# p_two = Player.new()
# p_two.infos
# puts "Please, put the second player name :"
# p_two = Player.new()
#
# puts p_one.info
# puts p_two.info

class Player

@@player = 0
@@mark = ""

  attr_accessor :pname, :pmark, :victory

  def initialize
    @pname = ""
    @pmark = ""
    @victory = false
    @@player += 1
  end

  def infos
    puts "\nPlease, put the player name :"
    @pname = ((gets.chomp).to_s).capitalize
    if @@player == 1 && @@mark == ""
      puts "\nWhich mark do you want ? X or O ?"
      while @pmark != "X" && @pmark != "O" do
         @pmark = (gets.chomp).to_s.capitalize
      end
    elsif @@mark == "X"
      @pmark = "O"
    elsif @@mark == "O"
      @pmark = "X"
    end
    @@mark = @pmark
    puts "#{@pname} jouera avec la marque #{@pmark} !"
  end



end

class Game

  def initialize
    #TO DO : créé 2 joueurs, créé un board
    puts "Welcome to the BDX Tic-Tac-Toe ! Have fun with our progZ !"
    # Créé 2 joueurs
    @p_one = Player.new
    @p_one.infos
    @p_two = Player.new
    @p_two.infos
    # créé un board de game de 9 cases
    @yaya = Board.new

  end

  def go
    # TO DO : lance la partie
    puts "Let's go !"


  end

  def turn

    @yaya.show
    puts "It's #{@p_one.pname}'s turn!"
    @yaya.get_player_choice(@)

    #TO DO : affiche le plateau, demande au joueur il joue quoi,
    # vérifie si un joueur a gagné,
    # passe au joueur suivant si la partie n'est pas finie
  end

end


class BoardCase
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name.to_i
    @value = value
  end

  # def is_playable?(c_number)
  #   if c_number.value.to_i == c_number.name
  #     return true
  #   else
  #     return false
  #   end
  # end

end

class Board

  attr_accessor :cases, :choice

  def initialize
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

  def show

    puts "\n     |     |     "
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

    @choice = (gets.chomp).to_i
    self.set_case_value(@choice, @pmark)
    self.show_board
  end

  # def set_case_value(c_number, pmark)
  #   if is_playable?(c_number)
  #     c_number.value = pmark
  #   end
  # end

end

game = Game.new

game.go
game.turn

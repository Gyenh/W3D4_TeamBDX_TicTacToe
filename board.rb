require "color_text"

class Player

@@player = 0
@@mark = ""

  attr_accessor :pname, :pmark, :ppoints

  def initialize
    @pname = ""
    @pmark = ""
    @@player += 1
    @ppoints = 0
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
    puts "#{@pname} will play as #{@pmark} !"
  end

end



class Game

  @@victory = false

  def initialize
    puts "Welcome to the BDX Tic-Tac-Toe ! Have fun with our progZ !"
    @p_one = Player.new
    @p_one.infos
    @p_two = Player.new
    @p_two.infos
    @board_game = Board.new

  end

  def go
    puts "Let's go !"
    i = 0
    loop do
      break if i > 8
      self.turn(@p_one)
      i +=1
      puts i
      if @@victory
        puts "\nThere is a winner :"
        @board_game.show
        puts "\nGood game #{@p_one.pname} !"
        puts "#{@p_two.pname}, U suck"
        break
      end
      break if i > 8
      self.turn(@p_two)
      i +=1
      puts i
      if @@victory
        puts "\nThere is a winner :"
        @board_game.show
        puts "\nGood game #{@p_two.pname} !"
        puts "#{@p_one.pname}, U suck"
        break
      end
    end
    @board_game.show
    puts "Draw bitches!" if @@victory == false
    puts "#{@p_one.pname} : #{@p_one.ppoints} VS #{@p_two.pname} : #{@p_two.ppoints}"
    puts "Try again ? Y/N"
    choice = (gets.chomp).to_s.capitalize
    if choice == "Y"
      @@victory = false
      @board_game = Board.new
      self.go
    end

  end

  def turn(player)
    puts "It's #{player.pname}'s turn!"
    @board_game.show
    @choice = (gets.chomp).to_i
    @board_game.get_player_choice(@choice, player.pmark, player)
    if @board_game.victory(player)
      @@victory = true
      player.ppoints += 1
    end
  end

end



class BoardCase

  attr_accessor :name, :value

  def initialize(name, value)
    @name = name.to_i
    @value = value
  end

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

  def get_player_choice(choice, pmark, player)
    self.set_case_value(choice, pmark, player)
  end

  def set_case_value(choice, pmark, player)

    if is_playable?(@cases[choice-1])
      if pmark == "O"
        @cases[choice-1].value = pmark.red
      else
        @cases[choice-1].value = pmark.green
      end
    else
      puts "Taken ! Please try again !"
      choice = (gets.chomp).to_i
      self.set_case_value(choice, pmark, player)
    end
  end

  def is_playable?(cell)
    if cell.value.to_i == cell.name
      return true
    else
      return false
    end
  end


  def victory(player)

    if @cases[0].value == @cases[1].value && @cases[1].value == @cases[2].value
      return true

    elsif @cases[3].value == @cases[4].value && @cases[4].value == @cases[5].value
      return true

    elsif @cases[6].value == @cases[7].value && @cases[7].value == @cases[8].value
      return true

    elsif @cases[0].value == @cases[3].value && @cases[3].value == @cases[6].value
      return true

    elsif @cases[1].value == @cases[4].value && @cases[4].value == @cases[7].value
      return true

    elsif @cases[2].value == @cases[5].value && @cases[5].value == @cases[8].value
      return true

    elsif @cases[2].value == @cases[4].value && @cases[4].value == @cases[6].value
      return true

    elsif @cases[0].value == @cases[4].value && @cases[4].value == @cases[8].value
      return true

    end
  end

end

game = Game.new

game.go

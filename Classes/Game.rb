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
    @choice = 0
    @board_game.show
    unless (1..9).include? @choice
      @choice = (gets.chomp).to_i
    end
    @board_game.get_player_choice(@choice, player.pmark, player)
    if @board_game.victory(player)
      @@victory = true
      player.ppoints += 1
    end
  end

end

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

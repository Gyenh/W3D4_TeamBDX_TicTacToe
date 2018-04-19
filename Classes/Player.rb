class Player

@@player = 0                                          # Suit le nombre de joueur (sert à affecter les marques)
@@mark = ""

  attr_accessor :pname, :pmark, :ppoints

  def initialize                                      # On initialise avec l'ajout d'un player et à 0 points.
    @pname = ""
    @pmark = ""
    @@player += 1
    @ppoints = 0
  end

  def infos                                           # Demande les pseudos des 2 players, et affecte les marques
    puts "\nPlease, put the player name :"
    @pname = ((gets.chomp).to_s).capitalize           # Le player 1 commence toujours et il choisit sa marque
    if @@player == 1 && @@mark == ""
      puts "\nWhich mark do you want ? X or O ?"
      while @pmark != "X" && @pmark != "O" do
         @pmark = (gets.chomp).to_s.capitalize
      end
    elsif @@mark == "X"                               # Affecte l'autre marque au player 2
      @pmark = "O"
    elsif @@mark == "O"
      @pmark = "X"
    end
    @@mark = @pmark
    puts "#{@pname} will play as #{@pmark} !"         # Confirmation de la prise en compte
  end

end

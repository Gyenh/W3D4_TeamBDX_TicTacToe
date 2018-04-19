

class BoardCase
  attr_accessor :name, :value

  def initialize(name, value)
    @name = name
    @value = value
  end

  def is_playable?(c_number)
    if c_number.value = c_number.name
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
    a = cases[0].value
    b = cases[1].value
    c = cases[2].value
    d = cases[3].value
    e = cases[4].value
    f = cases[5].value
    g = cases[6].value
    h = cases[7].value
    i = cases[8].value

    puts "     |     |     "
    puts "  #{a}  |  #{b}  |  #{c}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{d}  |  #{e}  |  #{f}  "
    puts "_____|_____|_____"
    puts "     |     |     "
    puts "  #{g}  |  #{h}  |  #{i}  "
    puts "     |     |     "
  end

  def set_case_value(case_number)
    if is_playable?(case_number)
      case_number.value = "X"
    end
  end

end

bc_1 = BoardCase.new("a", "1")
bc_2 = BoardCase.new("b", "2")
bc_3 = BoardCase.new("c", "3")
bc_4 = BoardCase.new("d", "4")
bc_5 = BoardCase.new("e", "5")
bc_6 = BoardCase.new("f", "6")
bc_7 = BoardCase.new("g", "7")
bc_8 = BoardCase.new("h", "8")
bc_9 = BoardCase.new("i", "9")

cases = [bc_1, bc_2, bc_3, bc_4, bc_5, bc_6, bc_7, bc_8, bc_9]
yaya = Board.new
yaya.show_board(cases)
yaya.set_case_value(bc_1)
yaya.show_board(cases)

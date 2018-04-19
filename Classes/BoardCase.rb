class BoardCase

  attr_accessor :name, :value

  def initialize(name, value)
    @name = name.to_i
    @value = value
  end

end

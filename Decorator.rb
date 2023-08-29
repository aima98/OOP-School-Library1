require './Nameable'

class Decorator < Nameable
  attr_accessor :Nameable

  def initialize()
    super()
    @Nameable = Nameable
  end

  def correct_name
    @Nameable.correct_name
  end
end

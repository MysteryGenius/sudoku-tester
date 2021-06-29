class Grid
  attr_reader :input

  def initialize(input)
    @input = input
  end
  
  def rows
    @input.split("\n").map { |x| x.scan(/\d+/).join("").split("").map { |x| x.to_i} }.reject { |c| c.empty? }
  end
end
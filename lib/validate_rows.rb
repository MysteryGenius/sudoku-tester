class ValidateRows
  def self.call(input)
    rows = Grid.new(input).rows
    rows.map { |row|
      if row.uniq.length != row.length
        return false
      end
    }
    true
  end
end
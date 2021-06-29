require_relative "grid"

class ValidateColumns
  def self.call(input)
    rows = Grid.new(input).rows
    columns = rows.transpose
    columns.map { |row|
      if row.uniq.length != row.length
        return false
      end
    }
    true
  end
end
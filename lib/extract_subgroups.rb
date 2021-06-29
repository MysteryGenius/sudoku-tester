class ExtractSubgroups
  def self.call(input)
    nested = input.map { |row| [row[0..2], row[3..5], row[6..9]] }

    returnable = []
    for i in [0,3,6] do
      for j in 0..2 do
        returnable << nested[i][j].concat(nested[i+1][j]).concat(nested[i+2][j])
      end
    end

    returnable
  end
end
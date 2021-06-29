require_relative "./lib/validator"
require_relative "./lib/grid"
require_relative "./lib/validate_columns"
require_relative "./lib/validate_rows"
require_relative "./lib/extract_subgroups"
file = File.read("spec/fixtures/simple.sudoku")

# result = Validator.validate(file)
# p result

grid = [
  [1, 2, 3, 1, 2, 3, 1, 2, 3],
  [4, 5, 6, 4, 5, 6, 4, 5, 6],
  [7, 8, 9, 7, 8, 9, 7, 8, 9],
  [1, 2, 3, 1, 2, 3, 1, 2, 3],
  [4, 5, 6, 4, 5, 6, 4, 5, 6],
  [7, 8, 9, 7, 8, 9, 7, 8, 9],
  [1, 2, 3, 1, 2, 3, 1, 2, 3],
  [4, 5, 6, 4, 5, 6, 4, 5, 6],
  [7, 8, 9, 7, 8, 9, 7, 8, 9]
]


result = ExtractSubgroups.call(grid)
p result
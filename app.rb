require_relative "./lib/validator"
file = File.read("spec/fixtures/simple.sudoku")

result = Validator.validate(file)
p result
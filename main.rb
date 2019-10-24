require_relative './expressions/Add.rb'
require_relative './expressions/Literal.rb'
require_relative './expressions/Sub.rb'
require_relative './expressions/Print.rb'
require_relative './expressions/Eval.rb'

puts
puts "Visitor strategy cases"
puts

# Example for Literal
lit = Literal.new(23)
lit2 = Literal.new(3)
puts lit.accept(Print.new)

# Example for Add
add = Add.new(lit, lit2)
add.accept(Print.new) 
puts

# Exampple for Sub
sub = Sub.new(lit, lit2)
sub.accept(Print.new)
puts

# Example for Eval by visitor
puts add.accept(Eval.new)
puts sub.accept(Eval.new)
puts

puts "Eval by interface"
puts

# Example for Eval by overriding the method
puts add.eval_alt
puts sub.eval_alt
puts
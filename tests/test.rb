require 'test/unit'
require '../expressions/Add.rb'
require '../expressions/Literal.rb'

class LiteralTest < Test::Unit::TestCase

    # Literal Test Case
    def test_literal
        lit = Literal.new(2)
        assert_equal(2, lit.eval_alt(), "Incorrect value for class Literal")
    end

    # Add Test Case
    def test_add
        lit1 = Literal.new(2)
        lit2 = Literal.new(4)
        add = Add.new(lit1,lit2)
        assert_equal(6, add.eval_alt() , "Adding doesn't work for literal values " + lit1.to_s + " and " + lit2.to_s)
    end
end
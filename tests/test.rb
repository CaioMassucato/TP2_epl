require 'test/unit'
require '../expressions/Add.rb'
require '../expressions/Literal.rb'
require '../expressions/Sub.rb'

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
        assert_equal(6, add.eval_alt() , "Adding didn't work for literal values " + lit1.eval_alt().to_s + " and " + lit2.eval_alt().to_s)
    end

    # Sub Test Case
    def test_sub
        lit1 = Literal.new(5)
        lit2 = Literal.new(2)
        sub = Sub.new(lit1,lit2)
        assert_equal(3, sub.eval_alt() , "Subtracting didn't work for literal values " + lit1.eval_alt().to_s + " and " + lit2.eval_alt().to_s)
    end
end
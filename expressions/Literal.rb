require_relative '../alternative/eval_alternative.rb'
require_relative '../visitor/visitor.rb'
require_relative '../visitor/visitable.rb'

class Literal < EvalInterface
    include Visitable

    # Class attributes
    attr_accessor :lit_value

    def initialize(value)
        @lit_value = value.to_i
    end

    # Overridden from class EvalInterface
    def eval_alt
        return @lit_value
    end

end
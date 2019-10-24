require_relative '../alternative/eval_alternative.rb'
require_relative '../visitor/visitor.rb'
require_relative '../visitor/visitable.rb'

class Add < EvalInterface
    include Visitable
    
    # Class attributes
    attr_accessor :frst_value, :scnd_value

    def initialize(first, second)
        @frst_value = first
        @scnd_value = second
    end

    # Overridden from class EvalInterface
    def eval_alt
        return @frst_value.eval_alt + @scnd_value.eval_alt
    end
end
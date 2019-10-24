# This class implements the visitor strategy, whereas the method 
# Eval may "visit" other classes.

require_relative '../visitor/visitor.rb'

class Eval < Visitor
    def visit(subject)

        if subject.class == Literal
            return subject.lit_value
        end

        if subject.class == Add
            return self.visit(subject.frst_value) + self.visit(subject.scnd_value)
        end
        
        if subject.class == Sub
            return self.visit(subject.frst_value) - self.visit(subject.scnd_value)
        end

    end
end
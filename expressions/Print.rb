# This class implements the visitor strategy, whereas the method 
# Print may "visit" other classes.

require_relative '../visitor/visitor.rb'

class Print < Visitor
    def visit(subject)

        if subject.class == Literal
            return subject.lit_value.to_s
        end

        if subject.class == Add
            return print self.visit(subject.frst_value), " + ", self.visit(subject.scnd_value)
        end

        if subject.class == Sub
            return print self.visit(subject.frst_value), " - ", self.visit(subject.scnd_value)
        end

    end
end
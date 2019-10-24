# This class implements an interface for Eval. It's another
# alternative when one doesn't want to use the visitor strategy.

class EvalInterface
    def eval_alt
        raise "parent class method used for overriding"
    end
end
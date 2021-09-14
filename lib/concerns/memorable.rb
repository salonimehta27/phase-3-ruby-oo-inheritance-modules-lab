module Memorable
    module ClassMethods
    def reset_all
        all.clear  #self.all.clear self is optional with modules because the extend keyword knows it's class
      end

    
      def count
       all.count
      end
    end

    module InstanceMethods
        def initialize
            self.class.all<<self   # here you need self with instance methods
        end
    end
end
class Character < ActiveRecord::Base
   belongs_to :actor
   belongs_to :show
   def say_that_thing_you_say
      self.catchphrase
      "#{self.name} always says: #{self.catchphrase}"
    end
    def build_network
      w = self.show
      x = self.network
      binding.pry
      "#{x}"
    end
    def build_show(arg)
      Show.name

    end
end

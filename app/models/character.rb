class Character < ActiveRecord::Base

    belongs_to :actor 
    belongs_to :show

    # name, actor_id, and a show_id, adds the column catchphrase

    def say_that_thing_you_say
        "#{self.name} always says: #{self.catchphrase}"
    end 
  
end
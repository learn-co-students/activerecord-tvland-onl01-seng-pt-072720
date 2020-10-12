class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    catchphrase = "#{self.name} always says: #{self.catchphrase}"
  end

#   def build_shows(name)
#     self.shows << name
#   end
  
#   def build_network(call_letters)
#     self.shows.network
#   end

end
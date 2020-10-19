class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    self.actors.map {|actor| "#{actor.first_name} #{actor.last_name}"}
  end

  def build_network(letters)
    self.network = Network.new(letters)
  end
  
end
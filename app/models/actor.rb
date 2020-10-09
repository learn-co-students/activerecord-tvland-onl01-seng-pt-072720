class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name 
    self.first_name + " " + self.last_name
  end

  def list_roles
    show = self.shows.collect {|shows| shows.name}[0]
    role = self.characters.collect {|characters| characters.name}[0]
    array = [role + " - " + show]
    array
  end

end
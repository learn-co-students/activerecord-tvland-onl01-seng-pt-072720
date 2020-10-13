class Actor < ActiveRecord::Base
  has_many :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def list_roles
#lists all of the characters that actor has alongside the show that the character is in
    self.characters.collect {|character| "#{character.name} - #{character.show.name}"}.join(", ")
  end
end
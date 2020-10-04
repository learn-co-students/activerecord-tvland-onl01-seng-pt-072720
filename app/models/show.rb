class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters 
    has_many :actors, through: :characters

    def actors_list 
        self.actors.map {|actor| actor.full_name}
        
        # self.characters.map do |character|
        #     character.actor.full_name
        # end 
    end 
end
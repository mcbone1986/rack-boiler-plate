class Console < ActiveRecord::Base
    has_many :games
    has_many :developers, through: :games



    
end
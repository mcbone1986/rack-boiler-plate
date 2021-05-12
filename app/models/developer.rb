class Developer < ActiveRecord::Base
    has_many :games
    has_many :consoles, through: :games
end
class Games < ActiveRecord::Base
    belongs_to :console
    belongs_to :developer 
end
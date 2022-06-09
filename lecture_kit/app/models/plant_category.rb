class PlantCategory < ActiveRecord::Base
    belongs_to :category
    belongs_to :plant
end
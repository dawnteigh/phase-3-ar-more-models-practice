class PlantParenthood < ActiveRecord::Base

    before_save :cap_affection
    belongs_to :person
    belongs_to :plant

    def cap_affection
        self.affection = 11_000 if self.affection > 11_000
    end
# def plant_parents
#     # before ActiveRecord
#     PlantParent.all.select{|plant_parent| plant_parent == self.plant_parents}
#     # AR:
#     id_num = self.plant_parent_id
#     PlantParent.find(id_num)
# end
end
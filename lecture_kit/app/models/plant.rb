class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :plant_categories
    has_many :categories, through: :plant_categories
    has_many :waterings
    has_many :waterers, through: :waterings

    def number_of_days_since_last_watering
        today = DateTime.now
        last = self.waterings.last.created_at.to_datetime
        num = (today - last).to_i
        num == 0 ? "I was watered today!" : "I was watered #{num} days ago."
    end
end

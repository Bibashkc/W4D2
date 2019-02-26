class Cat < ApplicationRecord
    CAT_COLORS =["black", "white", "orange"]
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion:{in: CAT_COLORS} 
    validates :name, presence: true
    validates :sex, presence: true
    validates :description, presence: true

    def age
        Date.today.year - self.birth_date.year
    end
end
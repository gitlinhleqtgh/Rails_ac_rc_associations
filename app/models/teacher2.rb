class Teacher2 < ApplicationRecord
    has_many :subjects
    has_many :student2s, through: :subjects
end

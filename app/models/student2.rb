class Student2 < ApplicationRecord
    has_many :subjects
    has_many :teacher2s, through: :subjects 
end

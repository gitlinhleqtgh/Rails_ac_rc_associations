class Physician < ApplicationRecord
    has_many :appointments
    has_many :patients, :thought => :appointments
end

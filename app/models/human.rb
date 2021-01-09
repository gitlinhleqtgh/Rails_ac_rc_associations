class Human < ApplicationRecord
    enum status: [:dead, :alive, :mutant, :zombie]
end

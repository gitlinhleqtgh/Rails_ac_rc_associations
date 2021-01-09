class Tweet < ApplicationRecord
    belongs_to :user, touch: true
    after_touch do
        puts "An tweet was touched!"
    end 
end

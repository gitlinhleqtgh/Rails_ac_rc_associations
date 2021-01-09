class User < ApplicationRecord
    has_many :tweets, dependent: :destroy 
    has_many :pictures, as: :imageable

    after_touch :log_when_tweets_or_user_touched

    after_initialize do |user|
        puts "You have initialized an object!"
    end

    after_find do |user|
        puts "You have found an object!"
    end
    
    after_touch do |user|
        puts "You have touched an object"
    end

    private
    def log_when_tweets_or_user_touched
        puts "Tweet/User was touched"
    end

end

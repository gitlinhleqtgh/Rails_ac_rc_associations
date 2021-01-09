class Customer < ApplicationRecord
    default_scope{where actived: true}
    scope :actived, -> { where(actived:  true)}
    # Ex:- scope :active, -> {where(:active => true)}
    scope :title_like, ->(title) { where "title LIKE ?", "%#{title}%"}
    # Ex:- scope :active, -> {where(:active => true)}
end

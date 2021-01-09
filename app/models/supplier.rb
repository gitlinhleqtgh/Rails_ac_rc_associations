class Supplier < ApplicationRecord
    has_one :account
    has_one :account_history, class_name: "account_history", foreign_key: "account_history_id", :thought => account
end

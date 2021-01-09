class Account < ApplicationRecord
    belongs_to :supplier, class_name: "supplier", foreign_key: "supplier_id"
    has_one :account_history, class_name: "account_history", foreign_key: "account_history_id"
end

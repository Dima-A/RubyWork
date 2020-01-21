class Check < ApplicationRecord
    validates :method, :text, presence: true
end

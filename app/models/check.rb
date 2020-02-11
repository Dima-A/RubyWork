class Check < ApplicationRecord
  validates :method, :text, presence: true
  belongs_to :user
end

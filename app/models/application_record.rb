class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :method, :text, presence: true
end

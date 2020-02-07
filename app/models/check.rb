class Check < ApplicationRecord
  validates :method, :text, presence: true

  def self.search(search)
    if search
      @data = Check.where('email LIKE ?', "%#{search}%")
    else
      @data = Check.all
    end
  end
end

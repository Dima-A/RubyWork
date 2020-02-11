class AddUserRefToChecks < ActiveRecord::Migration[6.0]
  def change
    add_reference :checks, :user, index: true, foreign_key: true
  end
end

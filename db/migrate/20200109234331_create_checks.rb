class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.string :method
      t.text :text

      t.timestamps
    end
  end
end

class CreateExperieces < ActiveRecord::Migration[6.1]
  def change
    create_table :experieces do |t|
      t.text :company
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end

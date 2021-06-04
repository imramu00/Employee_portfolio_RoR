class CreateExperiences < ActiveRecord::Migration[6.1]
  def change
    create_table :experiences do |t|
      t.integer :emp_id
      t.date :from
      t.date :to
      t.string :company
      t.string :role

      t.timestamps
    end
  end
end

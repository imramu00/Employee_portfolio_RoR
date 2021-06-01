class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :age
      t.integer :emp_id
      t.string :gender
      t.string :phone
      t.string :email
      t.text :address
      t.text :skills


      t.timestamps
    end
  end
end

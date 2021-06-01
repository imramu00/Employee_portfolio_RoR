class ChangePhoneDataType < ActiveRecord::Migration[6.1]
  def change
    change_column :employees, :phone, :string
    add_column :employees, :experience, :integer
  end
end

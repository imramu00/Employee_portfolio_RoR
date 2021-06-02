class AddBelongsToToExperieces < ActiveRecord::Migration[6.1]
  def change
    add_column :experieces, :emp_id, :integer
    # add_foreign_key :experieces, :emp_id
  end
end

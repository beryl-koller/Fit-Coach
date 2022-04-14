class AddFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :telephone, :string
    add_column :users, :medical_data, :text
    add_column :users, :start_weight, :float
    add_column :users, :start_date, :datetime
  end
end

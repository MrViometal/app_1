class AddNameCompanyPhoneRoleToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :company, :string
    add_column :users, :phone, :string
    add_column :users, :role, :integer
  end
end

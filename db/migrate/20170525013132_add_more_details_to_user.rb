class AddMoreDetailsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :address, :string
    add_column :users, :name, :string
    add_column :users, :cellphone, :integer
  end
end

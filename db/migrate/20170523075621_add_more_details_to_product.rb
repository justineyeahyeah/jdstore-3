class AddMoreDetailsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :author, :string
    add_column :products, :publisher, :string
    add_column :products, :pages, :integer
  end
end

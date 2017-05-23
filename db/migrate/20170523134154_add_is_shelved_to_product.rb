class AddIsShelvedToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :is_shelved, :boolean, default: false
  end
end

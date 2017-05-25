class ChangeIntegerLimitInUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :cellphone, :integer, limit: 8
  end
end

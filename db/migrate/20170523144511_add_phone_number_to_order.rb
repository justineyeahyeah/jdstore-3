class AddPhoneNumberToOrder < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :billing_phone_number, :string
    add_column :orders, :shipping_phone_number, :string
  end
end

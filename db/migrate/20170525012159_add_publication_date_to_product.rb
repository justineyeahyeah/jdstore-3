class AddPublicationDateToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :publication_date, :date
  end
end

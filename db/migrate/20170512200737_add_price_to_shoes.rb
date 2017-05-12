class AddPriceToShoes < ActiveRecord::Migration[5.1]
  def change
    add_column(:shoes, :price, :money)
  end
end

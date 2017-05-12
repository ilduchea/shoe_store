class ChangeShoesPriceDataType < ActiveRecord::Migration[5.1]
  def change
    change_column(:shoes, :price, :string)
  end
end

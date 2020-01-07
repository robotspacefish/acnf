class UpdateFishesPriceToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :bugs, :price, :integer
  end
end

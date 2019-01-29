class ChangeDataTypeForRate < ActiveRecord::Migration[5.2]
  def change
    change_column :currencies, :rate, :float
  end
end

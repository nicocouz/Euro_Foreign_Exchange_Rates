class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :short
      t.string :country
      t.integer :rate

      t.timestamps
    end
  end
end

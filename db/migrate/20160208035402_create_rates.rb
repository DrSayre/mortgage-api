class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.decimal :fifteen_year_fixed
      t.date :rate_date

      t.timestamps
    end
  end
end

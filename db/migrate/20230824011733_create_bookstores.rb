class CreateBookstores < ActiveRecord::Migration[7.0]
  def change
    create_table :bookstores do |t|
      t.string :name
      t.boolean :currently_open
      t.float :revenue
      t.datetime :opening
      t.datetime :fiscal_end_year

      t.timestamps
    end
  end
end

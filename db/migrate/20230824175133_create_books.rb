class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.boolean :fiction
      t.float :cost
      t.datetime :date_published
      t.datetime :last_sold

      t.timestamps
    end
  end
end

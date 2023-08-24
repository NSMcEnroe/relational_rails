class AddBookstoreToBooks < ActiveRecord::Migration[7.0]
  def change
    add_reference :books, :bookstore, null: false, foreign_key: true
  end
end

class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.text :description
      t.belongs_to :book_category, foreign_key: true
      t.string :status
      t.belongs_to :shelf, foreign_key: true
      
      t.timestamps
    end
  end
end

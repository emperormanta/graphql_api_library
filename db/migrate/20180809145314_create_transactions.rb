class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :book, foreign_key: true
      t.bigint :qty
      t.belongs_to :user, foreign_key: true
      t.date :borrow_date
      t.date :return_date
      t.string :status

      t.timestamps
    end
  end
end

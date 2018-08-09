class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.belongs_to :book, foreign_key: true
      t.bigint :qty
      t.belongs_to :user, foreign_key: true
      t.date :borrow_date
      t.datestatus :return_date

      t.timestamps
    end
  end
end

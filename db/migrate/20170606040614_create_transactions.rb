class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.integer :amount
      t.string :description
      t.datetime :process_time
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

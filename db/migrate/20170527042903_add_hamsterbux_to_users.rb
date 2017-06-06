class AddHamsterbuxToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :hamsterbux, :integer, default: 0
  end
end

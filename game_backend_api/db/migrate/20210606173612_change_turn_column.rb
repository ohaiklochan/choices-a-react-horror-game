class ChangeTurnColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :choices, :turn, :integer
  end
end

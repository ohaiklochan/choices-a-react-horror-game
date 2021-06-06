class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :prompt
      t.string :choiceA
      t.string :choiceB
      t.string :turn
      t.string :path
      t.string :route
      t.string :from
      t.string :userpath

      t.timestamps
    end
  end
end

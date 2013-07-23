class CreateNerds < ActiveRecord::Migration
  def change
    create_table :nerds do |t|
      t.string :nameA
      t.text :question
      t.string :nameB
      t.text :answer

      t.timestamps
    end
  end
end

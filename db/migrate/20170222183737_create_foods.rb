class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :amount
      t.integer :calories
      t.decimal :protein
      t.decimal :fat
      t.decimal :carbs
      t.text  :notes
      t.integer :user_id
      t.date :date
      t.timestamps
    end
  end
end

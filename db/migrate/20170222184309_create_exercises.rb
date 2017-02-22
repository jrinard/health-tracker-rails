class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.time :duration
      t.integer :calories
      t.text :notes
      t.integer :user_id
      t.date :date
      t.timestamps
    end
  end
end

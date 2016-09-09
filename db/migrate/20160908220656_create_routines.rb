class CreateRoutines < ActiveRecord::Migration
  def change
    create_table :routines do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.references :exercise, index: true

      t.timestamps null: false
    end
    add_foreign_key :routines, :exercises
  end
end

class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.date :time
      t.references :student2, null: false, foreign_key: true
      t.references :teacher2, null: false, foreign_key: true

      t.timestamps
    end
  end
end

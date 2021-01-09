class CreateStudent2s < ActiveRecord::Migration[6.1]
  def change
    create_table :student2s do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end

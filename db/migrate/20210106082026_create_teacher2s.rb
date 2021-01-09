class CreateTeacher2s < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher2s do |t|
      t.string :name

      t.timestamps
    end
  end
end

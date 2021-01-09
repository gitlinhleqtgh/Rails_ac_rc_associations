class CreateHumen < ActiveRecord::Migration[6.1]
  def change
    create_table :humen do |t|
      t.string :name
      t.integer :status, null: false, default: 0
      t.timestamps
    end
  end
end

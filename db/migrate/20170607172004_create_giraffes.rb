class CreateGiraffes < ActiveRecord::Migration[5.1]
  def change
    create_table :giraffes do |t|
      t.string :name
      t.string :color
      t.integer :age

      t.timestamps
    end
  end
end

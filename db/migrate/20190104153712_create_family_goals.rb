class CreateFamilyGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :family_goals do |t|
      t.string :family_name
      t.string :area
      t.string :world
      t.string :position

      t.timestamps
    end

    add_index :family_goals, [:area, :world, :position], unique: true
  end
end

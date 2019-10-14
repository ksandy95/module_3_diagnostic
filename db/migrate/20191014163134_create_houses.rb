class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.string :_id
      t.string :name
      t.string :mascot
      t.string :headOfHouse
      t.string :houseGhost
      t.string :founder
      t.string :school
    end
  end
end

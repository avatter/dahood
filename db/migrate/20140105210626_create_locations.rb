class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :strasse
      t.string :hausnummer
      t.integer :plz
      t.string :stadt
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

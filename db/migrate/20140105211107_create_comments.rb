class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :location, index: true

      t.timestamps
    end
  end
end

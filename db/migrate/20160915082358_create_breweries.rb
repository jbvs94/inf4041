class CreateBreweries < ActiveRecord::Migration
  def change
    create_table :breweries do |t|
      t.string :name
      t.text :description
      t.integer :nb_of_beer

      t.timestamps null: false
    end
  end
end

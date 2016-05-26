class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :beds
      t.string :baths
      t.string :price
      t.string :status
      t.text :description
      t.string :google_address
      t.boolean :show_to_site, default: false
      t.string :image
      t.timestamps
    end
  end
end

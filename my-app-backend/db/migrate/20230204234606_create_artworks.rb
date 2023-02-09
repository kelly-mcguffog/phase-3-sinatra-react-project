class CreateArtworks < ActiveRecord::Migration[6.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :description
      t.string :medium
      t.integer :price
      t.date :date_created
      t.string :image_url
      t.integer :artist_id
    end
  end
end

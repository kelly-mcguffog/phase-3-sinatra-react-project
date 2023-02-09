class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :bio
      t.date :birth_date
      t.date :death_date
      t.string :headshot_url
    end
  end
end

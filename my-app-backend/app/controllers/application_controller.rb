class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/artists" do
    artists = Artist.all.order(:name)
    artists.to_json(include: :artworks)
  end
  get "/featured" do
    artworks = Artwork.all.order(:title).limit(5)
    artworks.to_json(include: :artist)
  end
  get "/artworks" do
    artworks = Artwork.all.order(:title)
    artworks.to_json(include: :artist)
  end
  post "/artists" do
    artist = Artist.create(
      name: params[:name],
      bio: params[:bio],
      birth_date: params[:birth_date],
      death_date: params[:death_date],
      headshot_url: params[:headshot_url],
    )
    artist.to_json(include: :artworks)
  end
  post "/artworks" do
    artwork = Artwork.create(
      title: params[:title],
      description: params[:description],
      medium: params[:medium],
      price: params[:price],
      year_created: params[:year_created],
      image_url: params[:image_url],
      artist_id: params[:artist_id]
    )
    artwork.to_json(include: :artist)
  end
  
  patch '/artworks/:id' do
    artwork = Artwork.find(params[:id])
    artwork.update(
      title: params[:title],
      description: params[:description],
      medium: params[:medium],
      price: params[:price],
      year_created: params[:year_created],
      image_url: params[:image_url]
    )
    artwork.to_json(include: :artist)
  end
  delete '/artworks/:id' do
    artwork = Artwork.find(params[:id])
    artwork.destroy
    artwork.to_json
  end
end

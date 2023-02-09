class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/artists" do
    artists = Artist.all.order(:name)
    artists.to_json
  end
  get "/artworks" do
    artworks = Artwork.all.order(:title)
    artworks.to_json(only: [:id, :title, :date_created, :image_url], include: {
      artist: {only: [:name]}
    })
  end
  get "/artists/:id" do
    artist = Artist.find(params[:id])
    artist.to_json(include: {artworks: {only: [:id, :title, :date_created, :image_url] }})
  end
  get "/artworks/:id" do
    artwork = Artwork.find(params[:id])
    artwork.to_json(include: {artist: {only: [:id, :name, :birth_date, :death_date] }})
  end
  post "/artworks" do
    artwork = Artwork.create(
      title: params[:title],
      description: params[:description],
      medium: params[:medium],
      price: params[:price],
      date_created: params[:date_created],
      image_url: params[:image_url],
      artist_id: params[:artist_id]
    )
    artwork.to_json
  end
  patch '/artworks/:id' do
    artwork = Artwork.find(params[:id])
    artwork.update(
      price: params[:price]
    )
    artwork.to_json
  end
  delete '/artworks/:id' do
    artwork = Artwork.find(params[:id])
    artwork.destroy
    artwork.to_json
  end
end

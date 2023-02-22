import '../index.css';
import React, {useEffect, useState} from "react";
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import HomeContainer from './HomeContainer';
import NavBar from './Navbar';
import ArtworksContainer from './ArtworksContainer';
import ArtistsContainer from './ArtistsContainer';
import ArtworkInfo from './ArtworkInfo';
import ArtistInfo from './ArtistInfo';
import NewArtwork from './NewArtwork';
import EditArtwork from './EditArtwork';

function App() {
  
  const [artists, setArtists] = useState([])
  const [artworks, setArtworks] = useState([])


  useEffect(() => {
    Promise.all([
      fetch("http://localhost:9292/artists"),
      fetch("http://localhost:9292/artworks"),
    ])
    .then(([resArtists, resArtworks]) => 
      Promise.all([resArtists.json(), resArtworks.json()])
    )
    .then(([dataArtists, dataArtworks]) => {
      setArtists(dataArtists);
      setArtworks(dataArtworks);
    }); 
  },[])



  const onAddNewArtwork = (newArtwork) => {
    const updatedArtists = artists.map(artist => {
      if(artist.id === newArtwork.artist_id){
        return {...artist, artworks: [...artist.artworks, newArtwork]}
      }else{
        return artist
      }
    })
    setArtists(updatedArtists)
    setArtworks([...artworks, newArtwork])
  }

  const onDeleteArtwork = (id) => {
    setArtworks(artworks.filter(artwork => artwork.id !== id))
  }

const onUpdateArtwork = (updatedArtwork) => {

    const updatedList = artworks.map(artwork => {
        if(artwork.id === updatedArtwork.id){
            return updatedArtwork
        } else {
            return artwork
        }
    })
    setArtworks(updatedList)

    const updatedArtists = artists.map(artist => {
      const match = updatedList.filter(item => item.artist_id === updatedArtwork.artist_id)
      if(artist.id === updatedArtwork.artist_id){
        return {...artist, artworks: match}
      }else{
        return artist
      }
    })
    setArtists(updatedArtists)
}


  return (
      <Router>
        <NavBar />
        <Switch>
          <Route exact path="/">
            <HomeContainer />
          </Route>
          <Route exact path="/artworks">
            <ArtworksContainer onDeleteArtwork={onDeleteArtwork} artworks={artworks}/>
          </Route>
          <Route path="/artworks/:id/details">
            <ArtworkInfo artworks={artworks}/>
          </Route>
          <Route path="/artworks/:id/edit">
            <EditArtwork onUpdateArtwork={onUpdateArtwork} artworks={artworks}/>
          </Route>
          <Route exact path="/artists">
            <ArtistsContainer artists={artists}/>
          </Route>
          <Route path="/artists/:id/details">
            <ArtistInfo artists={artists}/>
          </Route>
          <Route path="/artists/:id/new">
            <NewArtwork onAddNewArtwork={onAddNewArtwork}/>
          </Route>
        </Switch>
      </Router>
  );
}

export default App;
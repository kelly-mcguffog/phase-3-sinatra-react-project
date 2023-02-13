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

  return (
      <Router>
        <NavBar />
        <Switch>
          <Route exact path="/">
            <HomeContainer />
          </Route>
          <Route exact path="/artworks">
            <ArtworksContainer artworks={artworks}/>
          </Route>
          <Route path="/artworks/:id/details">
            <ArtworkInfo artworks={artworks}/>
          </Route>
          <Route exact path="/artists">
            <ArtistsContainer artists={artists}/>
          </Route>
          <Route path="/artists/:id/details">
            <ArtistInfo artists={artists}/>
          </Route>
          <Route path="/artists/:id/new">
            <NewArtwork />
          </Route>
        </Switch>
      </Router>
  );
}

export default App;

import '../index.css';
import React, {useState, useEffect} from "react";
import ArtworksContainer from './ArtworksContainer';

function App() {
  
  const [artworks, setArtworks] = useState([])
  useEffect(() => {
      fetch("http://localhost:9292/artworks")
      .then(res => res.json())
      .then(data => setArtworks(data))
  },[])

  return (
    <div className="App">
      <ArtworksContainer artworks={artworks}/>
    </div>
  );
}

export default App;

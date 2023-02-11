import React, {useState, useEffect} from "react";
import ArtworkCard from "./ArtworkCard";

function ArtworksContainer(){
    const [artworks, setArtworks] = useState([])
    useEffect(() => {
        fetch("http://localhost:9292/artworks")
        .then(res => res.json())
        .then(data => setArtworks(data))
    },[])
    
    return(
        <main id="container">
            {artworks.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)}
        </main>
    )
}

export default ArtworksContainer
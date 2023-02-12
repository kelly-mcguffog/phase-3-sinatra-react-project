import React, {useState, useEffect} from "react";
import ArtistCard from "./ArtistCard";

function ArtistsContainer(){
    const [artists, setArtists] = useState([])
    useEffect(() => {
        fetch("http://localhost:9292/artists")
        .then(res => res.json())
        .then(data => setArtists(data))
    },[])
    
    return(
        <main id="container">
            {artists.map(artist => <ArtistCard key={artist.id} artist={artist}/>)}      
        </main>
    )
}

export default ArtistsContainer;
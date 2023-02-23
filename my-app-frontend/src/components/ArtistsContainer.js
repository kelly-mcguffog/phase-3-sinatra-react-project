import React from "react";
import ArtistCard from "./ArtistCard";

function ArtistsContainer({artists}){
    
    return(
        <main className="container">
            {artists.map(artist => <ArtistCard key={artist.id} artist={artist}/>)}      
        </main>
    )
}

export default ArtistsContainer;
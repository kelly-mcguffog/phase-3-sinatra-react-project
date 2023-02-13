import React from "react";
import ArtworkCard from "./ArtworkCard";

function ArtworksContainer({artworks}){
    return(
        <main id="container">
            {artworks.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)}
        </main>
    )
}

export default ArtworksContainer
import React from "react";
import ArtworkCard from "./ArtworkCard";

function ArtworksContainer({artworks}){
    return(
        <main>
            {artworks.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)}
        </main>
    )
}

export default ArtworksContainer
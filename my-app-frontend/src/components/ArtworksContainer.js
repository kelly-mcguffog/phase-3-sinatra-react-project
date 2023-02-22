import React from "react";
import ArtworkCard from "./ArtworkCard";

function ArtworksContainer({artworks, onDeleteArtwork}){
    return(
        <main id="container">
            {artworks.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork} onDeleteArtwork={onDeleteArtwork}/>)}
        </main>
    )
}

export default ArtworksContainer;
import React from "react";
import { useParams } from "react-router-dom";
import ArtworkCard from "./ArtworkCard";

function ArtworkInfo({artworks}){
    
    const {id} = useParams()
    const artwork = artworks.find(a => a.id == id)

        if(!artwork){
            return <h1>loading</h1>
        }
        const {image_url, title, description, medium, year_created, artist} = artwork
        const matchedArt = artworks.filter(artwork => artwork.artist_id == artist.id)
        const other = matchedArt.filter(artwork => artwork.title !== title)
            console.log(other)

    return(
        <>
            <div className="info">
                <div className="image-container">
                    <img className="image" src={image_url} alt={title} />
                </div>
                <div className="details-container">
                    <h2 className="details">{title}</h2>
                    <h4 className="details">{artist.name} ({year_created})</h4>
                    <h4 className="details">{medium}</h4>
                    <p className="details">{description}</p>
                </div>
            </div>
            <div className="artwork">
                <div className="header">
                    <h1>More Pieces by {artist.name}:</h1>
                </div>
                <div className="carousel">
                    {other.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)}
                </div>
            </div>
        </>
    )
}

export default ArtworkInfo;
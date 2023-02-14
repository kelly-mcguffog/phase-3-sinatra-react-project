import React from "react";
import { useParams, Link } from "react-router-dom";
import ArtworkCard from "./ArtworkCard";
// import ImageCarousel from "./ImageCarousel";

function ArtworkInfo({artworks}){
    
    const {id} = useParams()
    const artwork = artworks.find(a => a.id == id)
    const {image_url, title, description, medium, price, year_created, artist} = artwork

    // console.log(artwork)

    const matchedArt = artworks.filter(artwork => artwork.artist_id == artist.id)
    const other = matchedArt.filter(artwork => artwork.title !== title)
        console.log(other)

    return(
        <>
            <div className="info">
                <div className="image-container">
                    <img className="image" src={image_url} alt={title} />
                    {/* <p>Delete</p>
                    <p>Edit</p> */}
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
                    <Link to={`/artists/${id}/new`}>
                        <div className="button">
                            <h5>Add Artwork</h5>
                        </div>
                    </Link>
                </div>
                <div className="carousel">
                    {other.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)}
                </div>
            </div>
        </>
    )
}

export default ArtworkInfo;
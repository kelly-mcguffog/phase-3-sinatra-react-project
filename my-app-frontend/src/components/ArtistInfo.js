import React from "react";
import { useParams, Link } from "react-router-dom";
import ArtworkCard from "./ArtworkCard";

function ArtistInfo({artists}){

    const {id} = useParams()
    const artist = artists.find(a => a.id == id)
    
    if(!artist){
        return <h1>loading</h1>
    }

    const {headshot_url, name, bio, birth_date, death_date, artworks} = artist

    return(
        <>
            <div className="info">
                <div className="image-container">
                    <img className="image" src={headshot_url} alt={name} />
                </div>
                <div className="details-container">
                    <h2 className="details">{name}</h2>
                    <h4 className="details">{birth_date} – {death_date}</h4>
                    <p className="details">{bio}</p>
                </div>
            </div>
            <div className="artwork">
                <div className="header">
                    <h1>Pieces by {name}:</h1>
                    <Link to={`/artists/${id}/new`}>
                        <div className="button">
                            <h5>Add Artwork</h5>
                        </div>
                    </Link>
                </div>
                <div className="carousel">
                    {artworks.map((artwork) => <ArtworkCard key={artwork.id} propArtist={artist} artwork={artwork}/>)}
                </div>
            </div>
        </>
    )
}

export default ArtistInfo;
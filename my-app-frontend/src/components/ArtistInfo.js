import React from "react";
import { useParams, Link } from "react-router-dom";
import ArtworkCard from "./ArtworkCard";

function ArtistInfo({artists}){

    const {id} = useParams()
    const artist = artists.find(a => a.id == id)

    // const {headshot_url, name, bio, birth_date, death_date, artworks} = artist

    console.log(artist)

    return(
        <>
            <div className="info">
                {/* <div className="image-container">
                    <img className="image" src={artist.headshot_url} alt={artist.name} />
                </div>
                <div className="details-container">
                    <h2>{artist.name}</h2>
                    <h4>{artist.birth_date}{artist.death_date}</h4>
                    <p>{artist.bio}</p>
                </div>
            </div>
            <div className="artwork">
                <h1>Artwork:</h1>
                <Link to={`/artists/${id}/new`}>
                    <div className="button">
                        <h5>Add Artwork</h5>
                    </div>
                </Link> */}
                {/* {artworks.map((artwork) => <ArtworkCard key={artwork.id} artwork={artwork}/>)} */}
            </div>
        </>
    )
}

export default ArtistInfo;
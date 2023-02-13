import React, {useEffect, useState} from "react";
import { useParams, Link } from "react-router-dom";
// import ArtworkCard from "./ArtworkCard";
// import ImageCarousel from "./ImageCarousel";

function ArtworkInfo(){
    
    const [artwork, setArtwork] = useState([{}])
    const {id} = useParams()
    const {image_url, title, description, medium, price, year_created} = artwork

    // useEffect(() => {
    //     fetch(`http://localhost:9292/artworks/${id}`)
    //     .then(res => res.json())
    //     .then(data => setArtwork(data))
    // },[id]);


    return(
        <>
            <div className="info">
                <div className="image-container">
                    <img className="image" src={image_url} alt={title} />
                </div>
                <div className="details-container">
                    <h2>{title}</h2>
                    <h4>{price}{year_created}</h4>
                    <h4>{medium}</h4>
                    <p>{description}</p>
                </div>
            </div>
            <div className="artwork">
                <h1>Artwork:</h1>
                {/* {artworks.map(artwork => <ArtworkCard key={artwork.id} artwork={artwork}/>)} */}
            </div>
        </>
    )
}

export default ArtworkInfo;
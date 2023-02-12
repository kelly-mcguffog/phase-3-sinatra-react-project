import React, {useEffect, useState} from "react";
import { useParams, Link } from "react-router-dom";
import ImageCarousel from "./ImageCarousel";

function ArtworkInfo(){
    
    const [artwork, setArtwork] = useState([{}])
    const {id} = useParams()
    const {image_url, title, description, medium, price, year_created} = artwork
    // const [loading, setLoading] = useState(false);
    // const [error, setError] = useState();

    useEffect(() => {
        fetch(`http://localhost:9292/artworks/${id}`)
        .then(res => res.json())
        .then(data => setArtwork(data))
        // .catch((err) => {
        //     setError(err);
        //   })
        //   .finally(() => {
        //     setLoading(false);
        //   });
    },[id]);

    // if (loading) {
    //     return <p>Data is loading...</p>;
    // }
    // if (error || !Array.isArray(artist)) {
    //     return <p>There was an error loading your data!</p>;
    // }
    

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
                {/* <Link to={`/artists/${id}/new`}>
                    <div className="button">
                        <h5>Add Artwork</h5>
                    </div>
                </Link> */}
                {/* {artworks.map(artwork => <ImageCarousel key={artwork.id} artwork={artwork}/>)} */}
            </div>
        </>
    )
}

export default ArtworkInfo;
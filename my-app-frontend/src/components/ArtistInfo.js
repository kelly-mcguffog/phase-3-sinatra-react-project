import React, {useEffect, useState} from "react";
import { useParams, Link } from "react-router-dom";
import ImageCarousel from "./ImageCarousel";

function ArtistInfo(){
    
    const [artist, setArtist] = useState([{}])
    const {id} = useParams()
    const {headshot_url, name, bio, birth_date, death_date} = artist
    // const [loading, setLoading] = useState(false);
    // const [error, setError] = useState();

    useEffect(() => {
        fetch(`http://localhost:9292/artists/${id}`)
        .then(res => res.json())
        .then(data => setArtist(data))
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
                    <img className="image" src={headshot_url} alt={name} />
                </div>
                <div className="details-container">
                    <h2>{name}</h2>
                    <h4>{birth_date}{death_date}</h4>
                    <p>{bio}</p>
                </div>
            </div>
            <div className="artwork">
                <h1>Artwork:</h1>
                <Link to={`/artists/${id}/new`}>
                    <div className="button">
                        <h5>Add Artwork</h5>
                    </div>
                </Link>
                {/* {artworks.map(artwork => <ImageCarousel key={artwork.id} artwork={artwork}/>)} */}
            </div>
        </>
    )
}

export default ArtistInfo;
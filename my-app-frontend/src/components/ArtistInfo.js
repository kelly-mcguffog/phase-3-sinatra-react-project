import React, {useEffect, useState} from "react";
import { useParams } from "react-router-dom";

function ArtistInfo(){
    
    const [artist, setArtist] = useState([{}])
    const {id} = useParams()
    const {headshot_url, name, bio, birth_date, death_date} = artist

    useEffect(() => {
        fetch(`http://localhost:9292/artists/${id}`)
        .then(res => res.json())
        .then(data => setArtist(data))
    },[id]);

    return(
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
    )
}

export default ArtistInfo;
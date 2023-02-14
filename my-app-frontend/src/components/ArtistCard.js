import React from "react";
import { Link } from "react-router-dom";

function ArtistCard({artist}){
    
    const {id, name, headshot_url, birth_date, death_date} = artist
    return(

        <div className="card">
        <Link className="card-link" to={`/artists/${id}/details`}>
          <img className="card-image" src={headshot_url} alt={name} />
          <div className="card-details">
            <h3 className="main-card-details">{name}</h3>
            <h3 className="secondary-card-details">{birth_date} – {death_date}</h3>
          </div>
          </Link>
        </div>
    )
}

export default ArtistCard;
import React from "react";
import { Link } from "react-router-dom";

function ArtistCard({artist}){
    const {id, name, headshot_url} = artist
    return(
        <div className="card">
        <Link to={`/artists/${id}/details`}>
          <img className="card-image" src={headshot_url} alt={name} />
          {/* <h2>{title}</h2> */}
          {/* <h4>{artist.name}</h4> */}
          {/* <h4>{date_created}</h4> */}
          </Link>
        </div>
    )
}

export default ArtistCard;
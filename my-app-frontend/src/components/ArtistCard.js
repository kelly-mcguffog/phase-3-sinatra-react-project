import React from "react";

function ArtistCard({artist}){
    const {id, name, headshot_url} = artist
    return(
        <div className="card">
          <img className="card-image" src={headshot_url} alt={name} />
          {/* <h2>{title}</h2> */}
          {/* <h4>{artist.name}</h4> */}
          {/* <h4>{date_created}</h4> */}
        </div>
    )
}

export default ArtistCard;
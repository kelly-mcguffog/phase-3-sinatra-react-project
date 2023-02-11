import React from "react";

function ArtworkCard({artwork}){
    const {id, title, date_created, image_url, artist} = artwork
    return(
        <div className="card">
          <img className="card-image" src={image_url} alt={title} />
          {/* <h2>{title}</h2> */}
          {/* <h4>{artist.name}</h4> */}
          {/* <h4>{date_created}</h4> */}
        </div>
    )
}

export default ArtworkCard;
import React from "react";

function ArtworkCard({artwork}){
    const {id, title, date_created, image_url, artist} = artwork
    return(
        <div className="image">
          <img src={image_url} alt={title} />
        </div>
    )
}

export default ArtworkCard;
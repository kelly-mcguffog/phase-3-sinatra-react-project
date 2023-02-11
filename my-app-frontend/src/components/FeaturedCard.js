import React from "react";

function FeaturedCard({featuredArt}){
    const {id, title, date_created, image_url, artist} = featuredArt
    return(
        <div className="featured-card">
          <img className="featured-image" src={image_url} alt={title} />
          {/* <h2>{title}</h2> */}
          {/* <h4>{artist.name}</h4> */}
          {/* <h4>{date_created}</h4> */}
        </div>
    )
}

export default FeaturedCard;
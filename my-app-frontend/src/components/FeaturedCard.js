import React from "react";

function FeaturedCard({featured}){
    const {id, title, year_created, image_url, artist} = featured
    const {name, birth_date, death_date, bio, headshot_url} = artist
    return(
        <div className="featured-cards">
            <div className="featured-artwork-card">
                <div className="featured-image-container">
                    <img className="featured-image" src={image_url} alt={title} />
                </div>
                <div className="featured-details">
                    <h2>{title}</h2>
                    <h4>{year_created}</h4>
                </div>
            </div>
            <div className="featured-artist-card">
                <div className="featured-details">
                    <h2>{name}</h2>
                    <h4>{birth_date}{death_date}</h4>
                </div>
                <div className="featured-image-container">
                    <img className="featured-image" src={headshot_url} alt={name} />
                </div>
            </div>
        </div>
    )
}

export default FeaturedCard;
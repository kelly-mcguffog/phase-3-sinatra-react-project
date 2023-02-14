import React, {useState} from "react";
import { Link } from "react-router-dom";

function ArtworkCard({artwork, onDeleteArtwork}){
    const {id, title, date_created, image_url, artist} = artwork
    // const [clicked, setClicked] = useState(false)

    // function menuIcon(){
    //     setClicked(clicked => !clicked)
    // }
    
    const handleDelete = () => {
        fetch(`http://localhost:9292/artworks/${id}`, {
          method: 'DELETE'
        })
        .then(res => res.json())
        .then(data => onDeleteArtwork(id))
      }

      
    return(
        <div className="card">
          <Link className="card-link" to={`/artworks/${id}/details`}>
          <img className="card-image" src={image_url} alt={title} />
          <div className="card-details">
            <h3 className="main-card-details">{title}</h3>
            <h3 className="secondary-card-details">{artist.name}</h3>
          </div>
          </Link>
          <i className="fa-solid fa-times"></i>
          <Link className="card-link" to={`/artworks/${id}/edit`}>
            <i className="fa-solid fa-pen-to-square"></i>
          </Link>
        </div>
    )
}

export default ArtworkCard;
import React, {useState} from "react";
import { useParams, useHistory } from "react-router-dom";

function EditArtwork({onUpdateArtwork, artworks}){

    const {id} = useParams();
    const initialState = artworks.find(a => a.id == id)
    console.log(initialState)

    const [formData, setFormData] = useState(initialState)
   
    
    const {title, description, medium, price, year_created, image_url} = initialState


    const history = useHistory()

    const handleChangeInput = (e) => {
        setFormData(editFormData => {
           return({ 
                ...editFormData,
                [e.target.name]: e.target.value
            })          
        })
    }
   
    const handleSubmitEdit = (e) => {
        e.preventDefault();
        fetch(`http://localhost:9292/artworks/${id}`,{
            method: "PATCH",
            headers: {
                'Content-Type': "application/json"
            },
            body: JSON.stringify(formData)
        })

        .then(res => res.json())
        .then(data => onUpdateArtwork(data))
        history.push("/artworks")
    }

    
    return (
        <div className="form-container">
            <form className="NewItem" onSubmit={handleSubmitEdit}>
            <label>
                    <input 
                    type="text" 
                    name="title" 
                    onChange={handleChangeInput}
                    value={title}
                    className="form-input"
                    placeholder="Artwork Title"
                    />
                </label>
                <label>
                    <textarea 
                    name="description" 
                    onChange={handleChangeInput} 
                    value={description}
                    className="form-textarea"
                    placeholder="Description"
                    >
                    </textarea>
                </label>
                <label>
                    <input 
                    type="text" 
                    name="medium" 
                    onChange={handleChangeInput}
                    value={medium}
                    className="form-input"
                    placeholder="Medium"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="price" 
                    onChange={handleChangeInput}
                    value={price}
                    className="form-input"
                    placeholder="Price"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="year_created" 
                    onChange={handleChangeInput}
                    value={year_created}
                    className="form-input"
                    placeholder="Created in Year"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="image_url" 
                    onChange={handleChangeInput} 
                    value={image_url}
                    placeholder="Enter an Image URL"
                    className="form-input"
                    />
                </label>
                
                <button type="submit">Update Details</button>
            </form>
        </div>
    );
}

export default EditArtwork;
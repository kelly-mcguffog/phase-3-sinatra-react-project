import React, {useState} from "react";
import { useParams } from "react-router-dom";


function NewArtwork(){
    const {id} = useParams()
    const initialState = {
        title: "",
        description: "",
        medium: "",
        price: "",
        year_created: "",
        image_url: "",
        artist_id: id
    }

    const [formData, setFormData] = useState(initialState)

    function handleChange(event) {
        setFormData({
          ...formData,
          [event.target.name]: event.target.value
        });

      }

      function handleSubmit(e){
        e.preventDefault();
        fetch('http://localhost:9292/artworks', {
        method: "POST",
        headers: {
            "Content-Type": "application/json"
        },
        body: JSON.stringify(formData)
        })
        .then(res => res.json())
        .then(content => setFormData(content))
        setFormData(initialState)
    }

    return (
        <div className="form-container">
            <form className="NewItem" onSubmit={handleSubmit}>
                <label>
                    <input 
                    type="text" 
                    name="title" 
                    onChange={handleChange}
                    value={formData.title}
                    className="form-input"
                    placeholder="Artwork Title"
                    />
                </label>
                <label>
                    <textarea 
                    name="description" 
                    onChange={handleChange} 
                    value={formData.description}
                    className="form-textarea"
                    placeholder="Description"
                    >
                    </textarea>
                </label>
                <label>
                    <input 
                    type="text" 
                    name="medium" 
                    onChange={handleChange}
                    value={formData.medium}
                    className="form-input"
                    placeholder="Medium"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="price" 
                    onChange={handleChange}
                    value={formData.price}
                    className="form-input"
                    placeholder="Price"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="year_created" 
                    onChange={handleChange}
                    value={formData.year_created}
                    className="form-input"
                    placeholder="Created in Year"
                    />
                </label>
                <label>
                    <input 
                    type="text" 
                    name="image_url" 
                    onChange={handleChange} 
                    value={formData.image_url}
                    placeholder="Enter an Image URL"
                    className="form-input"
                    />
                </label>
                
            
                <button onChange={(e) => setFormData(e.target.value)} name="submit" type="submit">Add to List</button>
            </form>
        </div>
    );
}

export default NewArtwork
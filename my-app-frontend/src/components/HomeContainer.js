import React, {useState, useEffect} from "react";
import FeaturedCard from "./FeaturedCard";

function HomeContainer(){
    const [featuredArt, setFeaturedArt] = useState([])
    useEffect(() => {
        fetch("http://localhost:9292/featured")
        .then(res => res.json())
        .then(data => setFeaturedArt(data))
    },[])
    
    return(
        <main id="container">
            {featuredArt.map(artwork => <FeaturedCard key={artwork.id} featuredArt={artwork}/>)}
        </main>
    )
}

export default HomeContainer
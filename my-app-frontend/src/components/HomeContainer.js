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
            {featuredArt.map(featured => <FeaturedCard key={featured.id} featured={featured}/>)}
        </main>
    )
}

export default HomeContainer
import React from "react";
import ArtworksContainer from "./ArtworksContainer";
import ArtworkInfo from "./ArtworkInfo";
import {Switch, Route} from "react-router-dom"

function Artworks(){

    return(
        <main id="container">
            <Switch>
                <Route exact path="/artworks">
                    <ArtworksContainer/>
                </Route>
                <Route path="/artworks/:id/details">
                    <ArtworkInfo />
                </Route>
            </Switch>
        </main>
    )
}

export default Artworks;
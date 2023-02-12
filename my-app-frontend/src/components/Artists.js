import React from "react";
import ArtistsContainer from "./ArtistsContainer";
import ArtistInfo from "./ArtistInfo";
import NewArtwork from "./NewArtwork";
import {Switch, Route} from "react-router-dom"

function Artists(){

    return(
        <main id="container">
            <Switch>
                <Route exact path="/artists">
                    <ArtistsContainer/>
                </Route>
                <Route path="/artists/:id/details">
                    <ArtistInfo />
                </Route>
                <Route path="/artists/:id/new">
                    <NewArtwork />
                </Route>
            </Switch>
        </main>
    )
}

export default Artists;
import React from "react";
import ArtistsContainer from "./ArtistsContainer";
import ArtistInfo from "./ArtistInfo";
import {Switch, Route} from "react-router-dom"

function Artists(){

    return(
        <main id="container">
            <Switch>
                <Route exact path="/artists">
                    <ArtistsContainer/>
                </Route>
                <Route path="/artists/:id">
                    <ArtistInfo />
                </Route>
            </Switch>
        </main>
    )
}

export default Artists;
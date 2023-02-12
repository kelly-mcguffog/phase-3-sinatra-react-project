import '../index.css';
import React from "react";
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import ArtworksContainer from './ArtworksContainer';
import HomeContainer from './HomeContainer';
import Artists from './Artists';
import NavBar from './Navbar';

function App() {

  return (
      <Router>
        <NavBar />
        <Switch>
          <Route exact path="/">
            <HomeContainer />
          </Route>
          <Route path="/artworks">
            <ArtworksContainer />
          </Route>
          <Route path="/artists">
            <Artists />
          </Route>
        </Switch>
      </Router>
  );
}

export default App;

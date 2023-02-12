import '../index.css';
import React from "react";
import {
  BrowserRouter as Router,
  Switch,
  Route
} from "react-router-dom";
import Artworks from './Artworks';
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
            <Artworks />
          </Route>
          <Route path="/artists">
            <Artists />
          </Route>
        </Switch>
      </Router>
  );
}

export default App;

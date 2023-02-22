import React from "react";
import { NavLink } from "react-router-dom";

function NavBar(){
    return(
      <div className="navbar">
       <h1 id="logo"><NavLink id="home" className="navLink" exact to="/">Gallery217</NavLink></h1>

        <div id="main-nav">
            <h3 className="navLink"><NavLink className="navLink link" to="/artists">Artists</NavLink></h3>
            <h3 className="navLink"><NavLink className="navLink link" to="/artworks">Artworks</NavLink></h3>
        </div>
    </div>

    )
}

export default NavBar;
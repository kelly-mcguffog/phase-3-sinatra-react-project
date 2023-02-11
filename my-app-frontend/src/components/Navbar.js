import React from "react";
import { NavLink } from "react-router-dom";

function NavBar(){
    return(
      <div className="navbar">
       <h4><NavLink id="home" exact to="/">Gallery217</NavLink></h4>

        <div id="nav-right">
            <NavLink className="navLink" to="/artists">Artists</NavLink>
            <NavLink className="navLink" to="/artworks">Artworks</NavLink>
            {/* <NavLink className="navLink" to="/netflix"></NavLink> */}
        </div>
    </div>

    )
}

export default NavBar;
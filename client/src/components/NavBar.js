import { NavLink } from 'react-router-dom'

import "./NavBar.css"

function NavBar () {
    return (
        <div className='navbar'>
            <NavLink to='/' className='navlink'>Home</NavLink>
            <NavLink to='/myfood' className='navlink'>MyFood</NavLink>
            <NavLink to='/recipes' className='navlink'>Recipes</NavLink>
            <NavLink to='/logout' className='navlink'>Logout</NavLink>
        </div>
    )
}

export default NavBar
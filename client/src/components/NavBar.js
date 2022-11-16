import { NavLink } from 'react-router-dom'

import "./NavBar.css"

function NavBar ({setRecipes}) {

    function handleRecipes () {
        fetch('/recipes')
        .then(res => res.json())
        .then(data => setRecipes(data))
    }

    return (
        <div className='navbar'>
            <NavLink to='/' className='navlink'>Home</NavLink>
            <NavLink to='/myfood' className='navlink'>MyFood</NavLink>
            <NavLink to='/recipes/all' className='navlink' onClick={handleRecipes}>Recipes</NavLink>
            <NavLink to='/logout' className='navlink'>Logout</NavLink>
        </div>
    )
}

export default NavBar
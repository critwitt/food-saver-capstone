import { NavLink } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'

import "./NavBar.css"

function NavBar ({setRecipes}) {

    const navigate = useNavigate()

    function handleRecipes () {
        fetch('/recipes')
        .then(res => res.json())
        .then(data => setRecipes(data))
    }

    function handleLogout () {
        fetch(`/logout`)
        .then(res => res.json())
        .then(data => {
            console.log(data)
            navigate(`/login`)
        })
    }

    return (
        <div className='navbar'>
            <NavLink to='/' className='navlink'>Home</NavLink>
            <NavLink to='/myfood' className='navlink'>MyFood</NavLink>
            <NavLink to='/recipes/all' className='navlink' onClick={handleRecipes}>Recipes</NavLink>
            <NavLink to='/logout' className='navlink' onClick={handleLogout}>Logout</NavLink>
        </div>
    )
}

export default NavBar
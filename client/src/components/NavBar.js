import { NavLink } from 'react-router-dom'
import { useNavigate } from 'react-router-dom'

import "./NavBar.css"

function NavBar ({user, setRecipes}) {

    const navigate = useNavigate()

    function handleRecipes () {
        fetch('/recipes')
        .then(res => res.json())
        .then(data => setRecipes(data))
    }

    function handleLogout () {
        fetch(`/logout`, {
            method: 'DELETE',
            headers: {'Content-Type': 'application/json'},
            body:JSON.stringify(user)
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                    navigate(`/login`)
                })
            }else {
                res.json().then(json => console.log(json.errors))
            }
        })
    }

    return (
        <div className='navbar'>
            <NavLink to='/' className='navlink'>Home</NavLink>
            <NavLink to='/myfood' className='navlink'>MyFood</NavLink>
            <NavLink to='/recipes/all' className='navlink' onClick={handleRecipes}>Recipes</NavLink>
            <NavLink to='/login' className='navlink' onClick={handleLogout}>Logout</NavLink>
        </div>
    )
}

export default NavBar
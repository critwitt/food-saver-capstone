import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"
import NewPerishable from "./NewPerishable"

import './Home.css'

function Home () {

    const [user, setUser] = useState(false)

    useEffect(() => {
        fetch('/authorized_user')
        .then(res => res.json())
        .then(user => setUser(user))
    },[])

    console.log(user)

    return (
        <div>
            <h1>Your Fridge</h1>
            <div className="foodcards">
                <NewPerishable />
                {user ? user.ingredients.map(ingredient => <FoodCard user={user} ingredient={ingredient} key={ingredient.id}/>) : "Loading"}
            </div>
        </div>
    )
}

export default Home
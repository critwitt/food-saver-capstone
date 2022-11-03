import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"

function Home () {

    const [ingredients, setIngredients] = useState([])

    useEffect(() => {
        fetch('/perishables')
        .then(res => res.json())
        .then(data => setIngredients(data))
    }, [])

    return (
        <div>
            <h1>Expiring Soon</h1>
            <div className="foodcards">
                {ingredients.map(ingredient => <FoodCard ingredient={ingredient} key={ingredient.id}/> )}
            </div>
        </div>
    )
}

export default Home
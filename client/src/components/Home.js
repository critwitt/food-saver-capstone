import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"
import NewPerishable from "./NewPerishable"

function Home () {

    const [ingredients, setIngredients] = useState([])

    useEffect(() => {
        fetch('/perishables')
        .then(res => res.json())
        .then(data => setIngredients(data))
    }, [])

    return (
        <div>
            <h1>Your Fridge</h1>
            <div className="foodcards">
                <NewPerishable />
                {ingredients.map(ingredient => <FoodCard ingredient={ingredient} key={ingredient.id}/> )}
            </div>
        </div>
    )
}

export default Home
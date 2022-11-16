import {useEffect,useState} from 'react'

import './RecipePage.css'

function RecipePage () {

    const [recipe, setRecipe] = useState({})

    const id = window.location.href.slice(30)

    useEffect(() => {
        fetch(`/recipes/${id}`)
        .then(res => res.json())
        .then(data => setRecipe(data))
    },[id])

    console.log(recipe)

    return(
        <div>
            {recipe.ingredients ? <h1 className='title'>{recipe.name}</h1> : <h1>Loading</h1>}
            {recipe.ingredients ? <h2 className='author'>A Recipe by {recipe.user.name}</h2> : <h1>Loading</h1>}
            <div className='ingredients'>
                <h2>Ingredients:</h2>
                {recipe.ingredients ? recipe.ingredient_lists.map(item => <ul key={item.id}>{item.ingredient_amount} {item.unit} {recipe.ingredients.find(food => food.id === item.ingredient_id).name}</ul>) : <div>Loading...</div>}
            </div>
            <div>
                <h2>Instructions:</h2>
                {recipe.ingredients ? recipe.steps.map(step => <p key={recipe.steps.indexOf(step) + 1}><b>Step {recipe.steps.indexOf(step) + 1}</b>: {step}</p>) : <div>Loading...</div>}
            </div>
        </div>
    )
}

export default RecipePage
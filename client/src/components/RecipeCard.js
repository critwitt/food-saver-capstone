import {useNavigate} from 'react-router-dom'

import './RecipeCard.css'

function RecipeCard ({ recipe }) {

    const history = useNavigate();

    function handleClick () {
        fetch(`/recipes/${recipe.id}`)
        .then(res => res.json())
        .then(data => history(`/recipes/${data.id}`))
    }

    return (
        <div className='recipecard' onClick={handleClick}>
            <h1>{recipe.name}</h1>
            <p>Ingredients: {recipe.ingredients[0] ? recipe.ingredients.map(ingredient => <span key={ingredient.id}>{ingredient.name}, </span>) : "Not Listed"}</p>
            
        </div>
    )
}

export default RecipeCard
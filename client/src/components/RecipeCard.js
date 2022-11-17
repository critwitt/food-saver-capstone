import {useNavigate} from 'react-router-dom'

import './RecipeCard.css'

function RecipeCard ({ user, recipe }) {

    const history = useNavigate();

    function handleClick () {
        fetch(`/recipes/${recipe.id}`)
        .then(res => res.json())
        .then(data => history(`/recipes/${data.id}`))
    }

    let array = []

    function check () {
        for (let i=0; i<recipe.ingredients.length; ++i) {
            if (user.ingredients.some(food => food.id === recipe.ingredients[i].id)) {
                array.push(true)
            } else {
                array.push(false)
            }
        }
    }
    
    check()

    return (
        <div className='recipecard' onClick={handleClick}>
            <img src={recipe.image} className='image' alt="Img Not Found" />
            <h1 className='recname'>{recipe.name}</h1>
            <p>Ingredients: {recipe.ingredients[0] ? recipe.ingredients.map(ingredient => <div className={user.ingredients.some(food => food.id === ingredient.id) ? 'exists' : 'dne'} key={ingredient.id}>{ingredient.name}</div>) : "Not Listed"}</p>
            
        </div>
    )
}

export default RecipeCard
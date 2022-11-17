import { useState } from 'react';

import RecipeCard from './RecipeCard';
import './Recipes.css'

import NewRecipe from './NewRecipe'

function Recipes ({ ing, user, setRecipes, recipes}) {

    const [toggleRecipes, setToggleRecipes] = useState(true)

    function handleClick () {
        setToggleRecipes(!toggleRecipes)
        if (window.location.href.slice(42)) {
            fetch(`/selectedrecipes?all_ingredients=${toggleRecipes}&ingredient_exists=true&ingredient_id=${window.location.href.slice(42)}&user_id=${user.id}`)
            .then(res => res.json())
            .then(data => setRecipes(data))
        } else {
            fetch(`/selectedrecipes?all_ingredients=${toggleRecipes}&ingredient_exists=false&user_id=${user.id}`)
            .then(res => res.json())
            .then(data => setRecipes(data))
        }

    }

    return (
        <div>
            <div  className='checkme'>
                <h3>Only show recipes I can make</h3>
                <input type='checkbox' onClick={handleClick}></input>
            </div>
            <div className='recipecards'>
                <NewRecipe user={user}/>
                {recipes.map(recipe => <RecipeCard key={recipe.id} user={user} recipe={recipe} />)}
            </div>
        </div>
    )
}

export default Recipes
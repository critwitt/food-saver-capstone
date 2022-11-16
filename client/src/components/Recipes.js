import {useEffect, useState} from 'react';

import RecipeCard from './RecipeCard';
import './Recipes.css'

import NewRecipe from './NewRecipe'

function Recipes ({user, setRecipes, recipes}) {

    const [toggleRecipes, setToggleRecipes] = useState(true)

    function handleClick () {
        setToggleRecipes(!toggleRecipes)
        if (toggleRecipes) {
            fetch(`/selectedrecipes?id=${user.id}`)
            .then(res => res.json())
            .then(data => setRecipes(data))
        } else if (window.location.href.slice(42)) {
            fetch(`/searchrecipe?id=${window.location.href.slice(42)}`)
            .then(res => res.json())
            .then(data => setRecipes(data))
        } else {
            fetch(`/recipes`)
            .then(res => res.json())
            .then(data => setRecipes(data))
        }
    }

    return (
        <div>
            <h3>Only show recipes I can make</h3>
            <input type='checkbox' onClick={handleClick}></input>
            <div className='recipecards'>
                <NewRecipe />
                {recipes.map(recipe => <RecipeCard key={recipe.id} user={user} recipe={recipe} />)}
            </div>
        </div>
    )
}

export default Recipes
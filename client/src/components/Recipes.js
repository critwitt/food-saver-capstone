import {useEffect, useState} from 'react';

import RecipeCard from './RecipeCard';
import './Recipes.css'

import NewRecipe from './NewRecipe'

function Recipes () {
    const [recipes, setRecipes] = useState([])

    useEffect(() => {
        fetch('/recipes')
        .then(res => res.json())
        .then(data => setRecipes(data))
    }, [])

    return (
        <div className='recipecards'>
            <NewRecipe />
            {recipes.map(recipe => <RecipeCard key={recipe.id} recipe={recipe} />)}
        </div>
    )
}

export default Recipes
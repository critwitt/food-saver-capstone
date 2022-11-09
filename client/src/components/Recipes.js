import {useEffect, useState} from 'react';

import RecipeCard from '../RecipeCard';

function Recipes () {
    const [recipes, setRecipes] = useState([])

    useEffect(() => {
        fetch('/recipes')
        .then(res => res.json())
        .then(data => setRecipes(data))
    }, [])

    return (
        <div>
            {recipes.map(recipe => <RecipeCard key={recipe.id} recipe={recipe} />)}
        </div>
    )
}

export default Recipes
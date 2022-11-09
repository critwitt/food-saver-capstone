function RecipeCard ({ recipe }) {
    console.log(recipe.ingredients)

    return (
        <div>
            <h1>{recipe.name}</h1>
            <p>Ingredients: {recipe.ingredients[0] ? recipe.ingredients.map(ingredient => <span>{ingredient.name}, </span>) : "Not Listed"}</p>
            
        </div>
    )
}

export default RecipeCard
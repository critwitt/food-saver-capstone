import './RecipeCard.css'

function RecipeCard ({ recipe }) {

    return (
        <div className='recipecard'>
            <h1>{recipe.name}</h1>
            <p>Ingredients: {recipe.ingredients[0] ? recipe.ingredients.map(ingredient => <span key={ingredient.id}>{ingredient.name}, </span>) : "Not Listed"}</p>
            
        </div>
    )
}

export default RecipeCard
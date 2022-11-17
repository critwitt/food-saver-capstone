import { useNavigate } from "react-router-dom"

import "./FoodCard.css"

function FoodCard ({ handleToggle, setRecipes, user, ingredient }) {

    const navigate = useNavigate()

    const perishable = user.perishables.find(element => element.ingredient_id === ingredient.id)
    const expires = Math.floor(Math.abs(new Date() - new Date(perishable.date_entered))/1000/60/60/24)

    function removePerishable () {
        fetch(`/perishables/${perishable.id}`, {
            method: 'DELETE',
            headers: {'Content-Type': 'application/json'},
        })
        handleToggle()
    }

    function handleRecipe () {
        fetch(`/searchrecipe?ingredient_id=${ingredient.id}`)
        .then(res => res.json())
        .then(data => {
            navigate(`/recipes/ingredients/${ingredient.id}`)
            setRecipes(data)
        })
    }

    const expiration = ingredient.shelf_life - expires

    return (
        <div className="foodcard">
            <img className="image" src={ingredient.image} alt={"No logo"}/>
            <h1 className="foodname">{ingredient.name}</h1>
            {ingredient.perishable ? <h2 className="expire">Expires in ~ {expiration} days</h2> : <h2 className="expire">Non-perishable</h2>}
            <div className="buttons">
                <button className="findrecipes button" onClick={handleRecipe}>Find Recipes</button>
                <button className="remove button" onClick={removePerishable}>Remove</button>
            </div>  
        </div>
    )
}

export default FoodCard
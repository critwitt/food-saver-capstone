import "./FoodCard.css"

function FoodCard ({ ingredient }) {

    const expires = Math.floor(Math.abs(new Date() - new Date(ingredient.date_entered))/1000/60/60/24)

    return (
        <div className="foodcard">
            <h1>{ingredient.ingredient.name}</h1>
            {ingredient.expired ? <h2>Expired ~ {expires - ingredient.ingredient.shelf_life} days ago</h2> : <h2>Expires in ~ {ingredient.ingredient.shelf_life - expires} days</h2>}
        </div>
    )
}

export default FoodCard
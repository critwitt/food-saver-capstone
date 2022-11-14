import "./FoodCard.css"

function FoodCard ({ user, ingredient }) {

    const perishable = user.perishables.find(element => element.ingredient_id === ingredient.id)
    const expires = Math.floor(Math.abs(new Date() - new Date(perishable.date_entered))/1000/60/60/24)

    function removePerishable () {
        fetch(`/perishables/${perishable.id}`, {
            method: 'DELETE',
            headers: {'Content-Type': 'application/json'},
        })
        .then(res => res.json())
        .then(data => console.log(data))
    }

    return (
        <div className="foodcard">
            <img className="image" src={ingredient.image}/>
            <h1>{ingredient.name}</h1>
            {ingredient.expired ? <h2>Expired ~ {expires - ingredient.shelf_life} days ago</h2> : <h2>Expires in ~ {ingredient.shelf_life - expires} days</h2>}
            <button className="findrecipes button">Find Recipes</button>
            <button className="remove button" onClick={removePerishable}>Remove</button>
        </div>
    )
}

export default FoodCard
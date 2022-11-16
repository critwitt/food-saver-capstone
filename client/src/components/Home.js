import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"
import NewPerishable from "./NewPerishable"

import './Home.css'

function Home () {

    const [user, setUser] = useState(false)

    useEffect(() => {
        fetch('/authorized_user')
        .then(res => res.json())
        .then(user => setUser(user))
    },[])

    let meats, spices, veggies, grains, dairys, condiments, bakings
    if (user) {
        meats = user.ingredients.filter(ingredient => ingredient.category === 'meat')
        spices = user.ingredients.filter(ingredient => ingredient.category === 'spice')
        veggies = user.ingredients.filter(ingredient => ingredient.category === 'vegetable')
        grains = user.ingredients.filter(ingredient => ingredient.category === 'grain')
        dairys = user.ingredients.filter(ingredient => ingredient.category === 'dairy')
        condiments = user.ingredients.filter(ingredient => ingredient.category === 'condiment')
        bakings = user.ingredients.filter(ingredient => ingredient.category === 'baking')
    }

    return (
        <div className='fridge'>
            <h1>Your Fridge</h1>
            <div className="foodcards">
                <NewPerishable user={user}/>
            </div>
            <div className='shelf meat'>
                <h1>Meats and Eggs</h1>
                <div className="foodcards">
                    {user ? meats.map(meat => <FoodCard user={user} ingredient={meat} key={meat.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf vegetable'>
                <h1>Veggies</h1>
                <div className="foodcards">
                    {user ? veggies.map(veg => <FoodCard user={user} ingredient={veg} key={veg.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf grains'>
                <h1>Grains</h1>
                <div className="foodcards">
                    {user ? grains.map(grain => <FoodCard user={user} ingredient={grain} key={grain.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf dairy'>
                <h1>Dairy</h1>
                <div className="foodcards">
                    {user ? dairys.map(dairy => <FoodCard user={user} ingredient={dairy} key={dairy.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf condiments'>
                <h1>Condiments & Sauces</h1>
                <div className="foodcards">
                    {user ? condiments.map(condiment => <FoodCard user={user} ingredient={condiment} key={condiment.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf spices'>
                <h1>Spice Rack</h1>
                <div className="foodcards">
                    {user ? spices.map(spice => <FoodCard user={user} ingredient={spice} key={spice.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf baking'>
                <h1>Baking Supplies</h1>
                <div className="foodcards">
                    {user ? bakings.map(baking => <FoodCard user={user} ingredient={baking} key={baking.id}/>) : "Loading"}
                </div>
            </div>
        </div>
    )
}

export default Home
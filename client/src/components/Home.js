import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"
import NewPerishable from "./NewPerishable"

import './Home.css'

function Home ({setRecipes}) {

    const [user, setUser] = useState(false)
    const [food, setFood] = useState(false)
    const [toggle, setToggle] = useState(true)

    function handleToggle () {
        setToggle(!toggle)
    }

    useEffect(() => {
        fetch('/authorized_user')
        .then(res => res.json())
        .then(user => {
            setUser(user);
            setFood(user.ingredients)
        })
    },[toggle])

    let meats, spices, veggies, grains, dairys, condiments, bakings
    if (user) {
        meats = food.filter(ingredient => ingredient.category === 'meat')
        spices = food.filter(ingredient => ingredient.category === 'spice')
        veggies = food.filter(ingredient => ingredient.category === 'vegetable')
        grains = food.filter(ingredient => ingredient.category === 'grain')
        dairys = food.filter(ingredient => ingredient.category === 'dairy')
        condiments = food.filter(ingredient => ingredient.category === 'condiment')
        bakings = food.filter(ingredient => ingredient.category === 'baking')
    }

    return (
        <div className='fridge'>
            <h1>Your Fridge</h1>
            <div className="foodcards">
                <NewPerishable handleToggle={handleToggle} user={user}/>
            </div>
            <div className='shelf meat'>
                <h1 className='foodtitle'>🍗 Meats and Eggs 🍗</h1>
                <div className="foodcards">
                    {user ? meats.map(meat => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={meat} key={meat.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf vegetable'>
                <h1 className='foodtitle'>🥕 Veggies 🥕</h1>
                <div className="foodcards">
                    {user ? veggies.map(veg => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={veg} key={veg.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf grains'>
                <h1 className='foodtitle'>🌾 Grains 🌾</h1>
                <div className="foodcards">
                    {user ? grains.map(grain => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={grain} key={grain.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf dairy'>
                <h1 className='foodtitle'>🐄 Dairy 🐄</h1>
                <div className="foodcards">
                    {user ? dairys.map(dairy => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={dairy} key={dairy.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf condiments'>
                <h1 className='foodtitle'>🥫 Condiments & Sauces 🥫</h1>
                <div className="foodcards">
                    {user ? condiments.map(condiment => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={condiment} key={condiment.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf spices'>
                <h1 className='foodtitle'>🌶️ Spice Rack 🌶️</h1>
                <div className="foodcards">
                    {user ? spices.map(spice => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={spice} key={spice.id}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf baking'>
                <h1 className='foodtitle'>🎂 Baking Supplies 🎂</h1>
                <div className="foodcards">
                    {user ? bakings.map(baking => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={baking} key={baking.id}/>) : "Loading"}
                </div>
            </div>
        </div>
    )
}

export default Home
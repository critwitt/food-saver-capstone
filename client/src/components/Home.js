import { useState, useEffect } from 'react'

import FoodCard from "./FoodCard"
import NewPerishable from "./NewPerishable"

import './Home.css'

function Home ({ setRecipes, switchToggle }) {

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
            <div className='firstdiv'>
                <div className='introwelcome'>
                    <div className='hometitle'>Welcome, {user.username}</div>
                    <div className='hometitle'>Let's see what's in your fridge:</div>
                </div>
                <div className="foodcards">
                    <NewPerishable handleToggle={handleToggle} user={user} switchToggle={switchToggle}/>
                </div>
            </div>
            <div className='shelf meat'>
                <h1 className='foodtitle'>🍗 Meats and Eggs 🍗</h1>
                <div className="foodcards">
                    {user ? meats.map(meat => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={meat} key={meat.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf vegetable'>
                <h1 className='foodtitle'>🥕 Veggies 🥕</h1>
                <div className="foodcards">
                    {user ? veggies.map(veg => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={veg} key={veg.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf grains'>
                <h1 className='foodtitle'>🌾 Grains 🌾</h1>
                <div className="foodcards">
                    {user ? grains.map(grain => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={grain} key={grain.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf dairy'>
                <h1 className='foodtitle'>🐄 Dairy 🐄</h1>
                <div className="foodcards">
                    {user ? dairys.map(dairy => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={dairy} key={dairy.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf condiments'>
                <h1 className='foodtitle'>🥫 Condiments & Sauces 🥫</h1>
                <div className="foodcards">
                    {user ? condiments.map(condiment => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={condiment} key={condiment.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf spices'>
                <h1 className='foodtitle'>🌶️ Spice Rack 🌶️</h1>
                <div className="foodcards">
                    {user ? spices.map(spice => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={spice} key={spice.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
            <div className='shelf baking'>
                <h1 className='foodtitle'>🎂 Baking Supplies 🎂</h1>
                <div className="foodcards">
                    {user ? bakings.map(baking => <FoodCard handleToggle={handleToggle} setRecipes={setRecipes} user={user} ingredient={baking} key={baking.id} switchToggle={switchToggle}/>) : "Loading"}
                </div>
            </div>
        </div>
    )
}

export default Home
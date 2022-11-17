import { useState } from 'react'
import './IngredientAddCard.css'

function IngredientAddCard ({handleToggle, recipe, food}) {

    const [formData, setFormData] = useState({
        ingredient_id: food.id,
        recipe_id: recipe.id,
        ingredient_amount: '',
        unit: ''
    })

    function handleChange(e) {
        e.preventDefault()
        setFormData({...formData, [e.target.name]: e.target.value})
    }

    function handleSubmit (e) {
        e.preventDefault()
        fetch(`/ingredient_lists`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(formData)
        })
        .then(res => res.json())
        .then(data => console.log(data))
        handleToggle()
    }

    return (
        <div className='foodcard'>
            <img className='searchimage' src={food.image} alt="No logo"/>
            <div className='searchtitle'>{food.name}</div>
            <form className='form'>
                <div className="inputs">
                    <input className='amount' name='ingredient_amount' placeholder="2..." onChange={handleChange}></input>
                    <input className='unit' name='unit' placeholder="tablespoons..." onChange={handleChange}></input>
                </div>
                <button className='button' onClick={handleSubmit}>Add Ingredient</button>
            </form>
        </div>
    )
}

export default IngredientAddCard
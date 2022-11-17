import {useEffect,useState} from 'react'

import Modal from 'react-modal'
import IngredientAddCard from './IngredientAddCard'

import './RecipePage.css'

function RecipePage ({user}) {

    Modal.setAppElement('#root')

    const [recipe, setRecipe] = useState({})
    const [isOpen, setIsOpen] = useState(false)
    const [allFood, setAllFood] = useState([]);

    const id = window.location.href.slice(30)

    function toggleModal () {
        setIsOpen(!isOpen)
    }

    useEffect(() => {
        fetch(`/recipes/${id}`)
        .then(res => res.json())
        .then(data => setRecipe(data))
    },[id])

    function handleSearch (e) {
        e.preventDefault()
        if (e.target.value) {
            fetch(`/search?name=${e.target.value}`)
            .then(res => res.json())
            .then(data => setAllFood(data))
        }
        else {
            setAllFood([])
        }
    }

    return(
        <div>
            {recipe.ingredients ? <h1 className='title'>{recipe.name}</h1> : <h1>Loading</h1>}
            {recipe.ingredients ? <h2 className='author'>A Recipe by {recipe.user.name}</h2> : <h1>Loading</h1>}
            <div className='mainrecipe'>
                <div className='ingredients'>
                    <h2 className='subtitle'>Ingredients:</h2>
                    {(recipe.ingredients && user.id === recipe.user.id) ? <button onClick={toggleModal}>✏️</button> : <div></div>}
                    {recipe.ingredients ? recipe.ingredient_lists.map(item => <ul key={item.id}>{item.ingredient_amount} {item.unit} {recipe.ingredients.find(food => food.id === item.ingredient_id).name}</ul>) : <div>Loading...</div>}
                </div>
                <div className='instructions'>
                    <h2 className='subtitle'>Instructions:</h2>
                    {recipe.ingredients ? recipe.steps.map(step => <p key={recipe.steps.indexOf(step) + 1}><b>Step {recipe.steps.indexOf(step) + 1}</b>: {step}</p>) : <div>Loading...</div>}
                </div>
            </div>
            <Modal isOpen={isOpen}>
                <button className='exit' onClick={toggleModal}>X</button>
                <form>
                    <div className='findfood'>Find a Food</div>
                    <div className='dateinfo'>

                    </div>
                    <div className='searchbar'>
                        <input className='searchbarinput' onChange={handleSearch}></input>
                    </div>
                    <div className='findfoods'>
                        {allFood.length > 0 ? allFood.map(food => <IngredientAddCard key={food.id} recipe={recipe} food={food}/>) : <h1> </h1>}
                    </div>
                </form>
            </Modal>
        </div>
    )
}

export default RecipePage
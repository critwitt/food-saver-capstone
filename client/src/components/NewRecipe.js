
import {useState, useEffect} from 'react'

import Modal from 'react-modal'

import "./RecipeCard.css"

function NewRecipe () {

const [isOpen, setIsOpen] = useState(false)
const [food, setFood] = useState([])
const [formData, setFormData] = useState({
    user_id: 1,
    name: '',
    steps: []
})

useEffect(() => {
    fetch('/ingredients')
    .then(res => res.json())
    .then(data => setFood(data))
},[])

function openModal () {
    setIsOpen(true)
}

function closeModal () {
    setIsOpen(false)
}

function handleChange (e) {
    console.log(formData)
    setFormData({...formData, [e.target.name]: e.target.value})
}

function handleSubmit (e) {
    e.preventDefault()
    console.log(formData)
    fetch('/recipes', {
        method: 'POST',
        headers: {'Content-Type': 'application/json'},
        body: JSON.stringify(formData)
    })
    .then(res => res.json())
    .then(data => console.log(data))
}

    return(
        <div className="recipecard" onClick={openModal}>
            <div className="plussign">+</div>
            <div className="newfood">Add New Recipe</div>
            <Modal isOpen={isOpen}>
                <form>
                    <button onClick={closeModal}>Close</button>
                    <div>Recipe</div>
                    <div>Name</div>
                    <input name='name' onChange={handleChange}></input>
                    <div className='steps'>
                        <div>Steps</div>
                        <button>+</button>
                        <button>-</button>
                    </div>
                    <input name='steps' onChange={handleChange}></input>
                    <button type='submit' onClick={handleSubmit}>Submit</button>
                </form>
            </Modal>
        </div>
    )
}

export default NewRecipe
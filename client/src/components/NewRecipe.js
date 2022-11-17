
import {useState, useEffect} from 'react'
import { useNavigate } from 'react-router-dom'

import Modal from 'react-modal'

import "./RecipeCard.css"
import "./NewRecipe.css"

function NewRecipe ({user}) {

    Modal.setAppElement('#root')

    const navigate = useNavigate()

    const [isOpen, setIsOpen] = useState(false)
    const [numOfSteps, setNumOfSteps] = useState(1)
    const [food, setFood] = useState([])
    const [formData, setFormData] = useState({
        user_id: user.id,
        name: ''
    })

    const [stepData, setStepData] = useState({})

    useEffect(() => {
        fetch('/ingredients')
        .then(res => res.json())
        .then(data => setFood(data))
    },[])

    function toggleModal () {
        setIsOpen(!isOpen)
        setNumOfSteps(1)
    }

    function handleChange (e) {
        e.preventDefault()
        setFormData({...formData, [e.target.name]: e.target.value})
    }

    function handleSubmit (e) {
        e.preventDefault()

        let array = []

        for (let step in stepData) {
            array[step] = stepData[step]
        }

        console.log({formData, array})

        fetch('/recipes', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                user_id: user.id,
                name: formData.name,
                steps: array
            })
        })
        .then(res => res.json())
        .then(data => navigate(`/recipes/${data.id}`))
    }

    let stepArray = []

    for (let i=0; i<numOfSteps; ++i) {
        stepArray[i] = i
    }

    function handleStepChange (e) {
        setNumOfSteps(e.target.value)
    }

    let options = []
    for(let i=0; i<9; ++i) {
        options[i] = i + 1
    }

    
    function handleNewStep (e) {
        e.preventDefault()
        setStepData({...stepData, [e.target.name]: e.target.value})
        for (let step in stepData) {
            stepArray[step] = stepData[step]
        }
    }

    return(
        <div className="recipecard">
            <div className="plussign" onClick={toggleModal}>+</div>
            <div className="newfood">Add New Recipe</div>
            <Modal isOpen={isOpen}>
                <button className='exit' onClick={toggleModal}>X</button>
                <div className='title big'>New Recipe</div>
                <div className='buddies'>
                    <div className='title small'>Number of Steps</div>
                    <select className='numOfSteps' onChange={handleStepChange}>
                        {options.map(option => <option key={option + 1}>{option}</option>)}
                    </select>
                </div>
                <form className='form'>
                    <div className='title smaller'>Name</div>
                    <input name='name' onChange={handleChange}></input>
                    <div className='steps'>
                        <div>Steps</div>
                    </div>
                    {stepArray.map(step => <div key={step + 1}><div>Step {step + 1}</div><textarea name={step} onChange={handleNewStep} cols='40' rows='5'></textarea></div>)}
                    <button type='submit' onClick={handleSubmit}>Submit</button>
                </form>
            </Modal>
        </div>
    )
}

export default NewRecipe
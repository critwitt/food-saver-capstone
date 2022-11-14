import {useState, useEffect} from 'react'

import Modal from 'react-modal'

import "./FoodCard.css"

function NewPerishable () {

    const [isOpen, setIsOpen] = useState(false)
    const [food, setFood] = useState([])
    const [formData, setFormData] = useState({
        user_id: 1,
        ingredient_id: '',
        name: '',
        date_entered: ''
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
        for (let i=0; i<food.length; ++i) {
            if (food[i].name === formData.name) {
                setFormData({...formData, ingredient_id: food[i].id})
            }
        }
        console.log(formData)
        fetch('/perishables', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(formData)
        })
        .then(res => res.json())
        .then(data => console.log(data))
    }

    return (
        <div className="foodcard" onClick={openModal}>
            <div className="plussign">+</div>
            <div className="newfood">Add New Food</div>
            <Modal isOpen={isOpen}>
                <form>
                    <button onClick={closeModal}>Close</button>
                    <div>Perishables</div>
                    <div>Food</div>
                    <select name='name' onChange={handleChange}>
                        <option> </option>
                        {food.map(fo => <option key={fo.id}>{fo.name}</option>)}
                    </select><span>or</span>
                    <input onChange={handleChange}></input>
                    <div>Date Bought</div>
                    <input name='date_entered' onChange={handleChange}></input>
                    <button type='submit' onClick={handleSubmit}>Submit</button>
                </form>
            </Modal>
        </div>
    )
}

export default NewPerishable
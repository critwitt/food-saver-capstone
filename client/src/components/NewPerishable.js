import {useState} from 'react'

import Modal from 'react-modal'

import SearchFoodCard from './SearchFoodCard'

import "./FoodCard.css"
import "./NewPerishable.css"

function NewPerishable ({user}) {

    Modal.setAppElement('#root')

    const [dateData, setDateData] = useState({
        day: '',
        month: '',
        year: ''
    })
    const [isOpen, setIsOpen] = useState(false)
    const [allFood, setAllFood] = useState([]);

    function openModal () {
        setIsOpen(true)
    }

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

    function handleDateChange (e) {
        e.preventDefault()
        setDateData({...dateData, [e.target.name]: e.target.value})
    }

    return (
        <div className="foodcard" onClick={openModal}>
            <div className="plussign">+</div>
            <div className="newfood">Add New Food</div>
            <Modal isOpen={isOpen}>
                <form>
                    <button className='exit'>X</button>
                    <div className='findfood'>Find a Food</div>
                    <div className='dateinfo'>
                        <div>Date Bought</div>
                        <input className='month' name='month' onChange={handleDateChange} placeholder="MM"></input>
                        <div>/</div>
                        <input className='day' name='day' onChange={handleDateChange} placeholder="DD"></input>
                        <div>/</div>
                        <input className='year' name='year' onChange={handleDateChange} placeholder="YYYY"></input>
                    </div>
                    <div className='searchbar'>
                        <input className='searchbarinput' onChange={handleSearch}></input>
                    </div>
                    {allFood.length > 0 ? allFood.map(food => <SearchFoodCard key={food.id} user={user} food={food} date={`${dateData.day}/${dateData.month}/${dateData.year}`}/>) : <h1> </h1>}
                </form>
            </Modal>
        </div>
    )
}

export default NewPerishable
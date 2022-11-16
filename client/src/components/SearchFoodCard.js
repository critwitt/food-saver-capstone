import { useState } from 'react'
import './SearchFoodCard.css'

function SearchFoodCard ({user, food, date}) {

    const [add, setAdd] = useState("Add")

    function handleAdd (e) {
        e.preventDefault()
        setAdd("Added!")

        fetch(`/perishables`, {
            method: 'POST',
            headers: {'Content-Type':'application/json'},
            body: JSON.stringify({
                user_id: user.id,
                ingredient_id: food.id,
                date_entered: date
            })
        })
        .then(res => res.json())
        .then(data => console.log(data))
    }

    return (
        <div>
            <img className='searchimage' src={food.image} alt="No logo"/>
            <div className='searchtitle'>{food.name}</div>
            <div className='searchbuttondiv'>
                <button className='serachbutton' onClick={handleAdd}>{add}</button>
            </div>
        </div>
    )
}

export default SearchFoodCard
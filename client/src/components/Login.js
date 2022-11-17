import { useState } from 'react'
import { useNavigate } from 'react-router-dom'

import './Login.css'

function Login ({ updateUser }) {

    const [formData, setFormData] = useState({
        username: '',
        password: ''
      })

    const navigate = useNavigate()
    
    const { username, password } = formData
    
    function handleChange (e) {
        const { name, value } = e.target
        setFormData({...formData, [name]: value})
    }
    
    function onSubmit (e) {
        e.preventDefault()
        const user = {
            username,
            password
        }
    
        fetch('/login', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(user)
        })
        .then(res => res.json())
        .then(user => {
            navigate('/')
            window.location.reload()
        })
    }

    return(
        <div className='signup'>
            <h1 className='title'>Welcome to Foodsaver</h1>
            <form className="form" onSubmit={onSubmit}>
                <div className="box username">
                    <h2 className='subtitle'>Username</h2>
                    <input className="input" name='username' value={username} onChange={handleChange}/>
                </div>
                <div className="box password">
                    <h2 className='subtitle'>Password</h2>
                    <input type='password' className="input" name='password' value={password} onChange={handleChange}/>
                </div>
                <input className='submit' type='submit' />
            </form>
            <img className='garden' src='https://www.stjcsh.org/uploads/images/vegetable-garden-877-medium_408.jpg' alt="no img"/>
        </div>
    )
}

export default Login;

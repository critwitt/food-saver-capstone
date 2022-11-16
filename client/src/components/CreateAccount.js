import { useState } from 'react'

function CreateAccount ({ updateUser }) {

    const [formData, setFormData] = useState({
        name: '',
        username: '',
        email: '',
        password: ''
      })
    
    const { name, username, email, password } = formData
    
    function handleChange (e) {
        const { name, value } = e.target
        setFormData({...formData, [name]: value})
    }
    
    function onSubmit (e) {
        e.preventDefault()
        const user = {
            name,
            username,
            email,
            password
        }

        fetch('/users', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(user)
        })
        .then(res => res.json())
        .then(data => 
            fetch('/login', {
                method: 'POST',
                headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({
                        username: data.username,
                        password: data.password
                    })
            })
            .then(res => res.json())
            .then(user => updateUser(user))
        )
    }

    return(
        <div className='signup'>
            <h1>Login</h1>
            <form className="form" onSubmit={onSubmit}>
                <div className="box name">
                    <h2>Username</h2>
                    <input className="input" name='name' value={name} onChange={handleChange}/>
                </div>
                <div className="box username">
                    <h2>Username</h2>
                    <input className="input" name='username' value={username} onChange={handleChange}/>
                </div>
                <div className="box email">
                    <h2>Username</h2>
                    <input className="input" name='email' value={email} onChange={handleChange}/>
                </div>
                <div className="box password">
                    <h2>Password</h2>
                    <input type='password' className="input" name='password' value={password} onChange={handleChange}/>
                </div>
                <input className='submit' type='submit' />
            </form>
        </div>
    )
}

export default CreateAccount;

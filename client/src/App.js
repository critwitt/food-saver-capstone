import { useState, useEffect } from "react";
import "./App.css"

function App() {
  const [user, setUser] = useState('')

  const [formData, setFormData] = useState({
    username: '',
    password: ''
  })

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
    .then(user => setUser(user))
  }

  return (
    <div className="signup">
      <h1>Login</h1>
      <form className="form" onSubmit={onSubmit}>
        <div className="box username">
          <h2>Username</h2>
          <input className="input" name='username' value={username} onChange={handleChange}/>
        </div>
        <div className="box password">
          <h2>Password</h2>
          <input type='password' className="input" name='password' value={password} onChange={handleChange}/>
        </div>
        <input className='submit' type='submit' />
      </form>
    </div>
  );
}

export default App;
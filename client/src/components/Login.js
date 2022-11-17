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

    const [toggle, setToggle] = useState(true)

    function handleNewAccount () {
        setToggle(!toggle)
    }

    /////

    const [createAccountFormData, setCreateAccountFormData] = useState({
        name: '',
        username: '',
        email: '',
        password: ''
    })

    const [errors, setErrors] = useState([])

    const { newusername, name, email, newpassword } = createAccountFormData

    function onCreate(e){
        e.preventDefault()
        const user = {
            name,
            newusername, 
            email,
            newpassword
        }

        console.log({
            name: user.name,
            username: user.newusername,
            email: user.email,
            password: user.newpassword
          })
       
        fetch(`/users`,{
          method:'POST',
          headers:{'Content-Type': 'application/json'},
          body:JSON.stringify({
            name: user.name,
            username: user.newusername,
            email: user.email,
            password: user.newpassword
          })
        })
        .then(res => {
            if(res.ok){
                res.json().then(user => {
                    handleNewAccount()
                })
            }else {
                res.json().then(json => setErrors(Object.entries(json.errors)))
            }
        })
       
    }

    const handleCreateAccountChange = (e) => {
        const { name, value } = e.target
        setCreateAccountFormData({ ...createAccountFormData, [name]: value })
      }

    /////

    if (toggle){
    return(
        <div className='signup'>
            <div className='flexing'>
                <img className='aisle' src='https://media.istockphoto.com/id/1144267140/vector/grocery-store-shop-interior-black-white-graphic-sketch-illustration-vector.jpg?s=612x612&w=0&k=20&c=Rj-j2hl6ycrEVJ0eN-_sZPilifmSr6s6yG1G9YFcoFA=' alt='no img' />
                <div>
                    <h1 className='title'>Welcome to Foodsaver</h1>
                    <form className="form" onSubmit={onSubmit}>
                        <div className="box username">
                            <h2 className='subtitle'>Username</h2>
                            <input autoComplete='off' className="input" name='username' value={username} onChange={handleChange}/>
                        </div>
                        <div className="box password">
                            <h2 className='subtitle'>Password</h2>
                            <input type='password' className="input" name='password' value={password} onChange={handleChange}/>
                        </div>
                        <input className='button signinbutton' type='submit' />
                    </form>
                    <div>New User?</div>
                    <button className='button newaccountbutton' onClick={handleNewAccount}>Create Account</button>
                </div>
                <img className='aisle reverse' src='https://media.istockphoto.com/id/1144267140/vector/grocery-store-shop-interior-black-white-graphic-sketch-illustration-vector.jpg?s=612x612&w=0&k=20&c=Rj-j2hl6ycrEVJ0eN-_sZPilifmSr6s6yG1G9YFcoFA=' alt='no img' />       
            </div>
        </div>
    )
    } else {
        return (
            <div className="signup">
                <form className='form'>
                    <h1>Create Account</h1>

                    <label>Name</label>
                    <input type='text' name='name' value={name} onChange={handleCreateAccountChange} />

                    <label>Username</label>
                    <input type='text' name='newusername' value={newusername} onChange={handleCreateAccountChange} />

                    <label>Email</label>
                    <input type='text' name='email' value={email} onChange={handleCreateAccountChange} />
                    
                    <label>Password</label>
                    <input type='password' name='newpassword' value={newpassword} onChange={handleCreateAccountChange} />
                    
                    <input className='button' type='submit' value='Create Account'  onClick={onCreate}/>
                    {errors?errors.map(e => <div>{e[0]+': ' + e[1]}</div>):null}

                    <div className='alternative'>Maybe you'd rather</div>
                    <button className='button newaccountbutton' onClick={handleNewAccount}>Sign In</button>
                </form>

            </div>
        )
    }
}

export default Login;

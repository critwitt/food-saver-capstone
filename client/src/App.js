import { useState, useEffect } from "react";
import { Routes, Route } from 'react-router-dom';

import Login from "./components/Login"
import CreateAccount from "./components/CreateAccount";
import Home from './components/Home'
import NavBar from "./components/NavBar"
import Recipes from "./components/Recipes"
import RecipePage from "./components/RecipePage"

import "./App.css"

function App() {
  const [user, setUser] = useState(false)

  function updateUser (user) {
    setUser(user)
  }

  useEffect(() => {
    fetch('/authorized_user')
    .then(res => {
      if (res.ok) {
        res.json().then(user => {
          updateUser(user)
        })
      }
    })
  }, [])

  return (
    <div className="App">
      <NavBar />
      {!user? <Login error={'Please Login'} updateUser={updateUser}/> :
        <Routes>
          <Route path='/' element={<Home />} />
          <Route path='/recipes' element={<Recipes />} />
          <Route path='/recipes/:id' element={<RecipePage />} />
          <Route path='/login' element={<Login />} />
          <Route path='/createaccount' element={<CreateAccount />} />
        </Routes>
      }
    </div>
  );
}

export default App;
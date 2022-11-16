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

  const [recipes, setRecipes] = useState([])

  useEffect(() => {
      fetch(`/recipes`)
      .then(res => res.json())
      .then(data => setRecipes(data))
  }, [])

  return (
    <div className="App">
      <NavBar setRecipes={setRecipes}/>
      {!user? <Login error={'Please Login'} updateUser={updateUser}/> :
        <Routes>
          <Route path='/' element={<Home setRecipes={setRecipes}/>} />
          <Route path='/recipes/all' element={<Recipes setRecipes={setRecipes} user={user} recipes={recipes}/>} />
          <Route path='/recipes/ingredients/:id' element={<Recipes setRecipes={setRecipes} user={user} recipes={recipes}/>} />
          <Route path='/recipes/:id' element={<RecipePage />} />
          <Route path='/login' element={<Login />} />
          <Route path='/createaccount' element={<CreateAccount />} />
        </Routes>
      }
    </div>
  );
}

export default App;
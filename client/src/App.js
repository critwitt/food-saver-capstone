import { useState, useEffect } from "react";
import { Routes, Route } from 'react-router-dom';

import Login from "./components/Login"
import Home from './components/Home'
import NavBar from "./components/NavBar"
import Recipes from "./components/Recipes"

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
          <Route path='/login' element={<Login />} />
        </Routes>
      }
    </div>
  );
}

export default App;
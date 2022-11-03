import { useState, useEffect } from "react";
import { Routes, Route } from 'react-router-dom';

import Login from "./components/Login"
import Home from './components/Home'

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
    {!user? <Login error={'Please Login'} updateUser={updateUser}/> :
      <Routes>
        <Route path='/' element={<Home />} />
      </Routes>
    }
    </div>
  );
}

export default App;
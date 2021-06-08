import React, { Component } from 'react'
import Game from './components/game'
import Choice from './components/choice'
import Intro from './components/intro'
import Ending from './components/ending'
import "./css/game.css"

class App extends Component {
  render() {
    return (
      <div>
        <h1>Testing</h1>
        <Game />
        <Choice />
        <Intro />
        <Ending />
      </div>
    )
  }
}

export default App
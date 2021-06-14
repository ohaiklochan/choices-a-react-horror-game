import React, { Component } from 'react'
import Game from './components/game'
import Choice from './components/choice'
// import Intro from './components/intro'
// import Ending from './components/ending'
import "./css/game.css"

class App extends Component {
state = {
  gameStarted: false,
  prompt: "Start the night?",
  choiceA: "Start",
  choiceB: "I'm not ready",
  turn: 1,
  route: "none",
  choices: [],
  user: [],
  userAge: [],
  win: false,
  lose: false
}

goToChoice = () => {
  this.setState({
    gameStarted: true
  })
}

changePath = (choice) => {
  if (choice) {
    this.setState({
      prompt: "Making sure this works",
      choiceA: "YUP",
      choiceB: "NOPE",
      turn: this.state.turn + 1
    })
  }
}

  render() {
    const playing = this.state.gameStarted
    return (
      <div>
        {this.state.gameStarted ? <Choice prompt={this.state.prompt} choiceA={this.state.choiceA} choiceB={this.state.choiceB} changePath={this.changePath} /> :
        <div className="background">
          <button onClick={this.goToChoice}>Start</button>
            <div className="description">Choices: A React Horror Game</div>
            <p>Do you have what it takes to survive the night?</p>
          </div>
        }
  </div>
    )}
}

export default App
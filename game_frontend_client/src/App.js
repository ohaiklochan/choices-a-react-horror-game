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

changePath = (choices, choice) => {
  if (choices.choiceA == choice) {
    const options = this.state.choices.filter(choice => choice.turn == this.state.turn)
    const filteredOptions = options.filter(choice => choice.route == this.state.route)
    const reFilteredOptions = filteredOptions.filter(choice => choice.from == this.state.prompt)
    const newPath = reFilteredOptions.find(choice => choice.path == "left")
    const newerPath = reFilteredOptions.filter(choice => choice.path == "left")
    const choice = this.state.choices[0].path
    if(this.state.route == "none") {
      this.setState({
        prompt: newPath.prompt,
        choiceA: newPath.choiceA,
        choiceB: newPath.choiceB,
        turn: this.state.turn + 1,
        route: "Good"
      })
    }
    
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
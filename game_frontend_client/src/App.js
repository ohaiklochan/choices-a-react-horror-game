import React, { Component } from 'react'
import Game from './components/game'
import Choice from './components/choice'
import Intro from './components/intro'
import Ending from './components/ending'
// import { BuzzFeedQuiz } from "react-buzzfeed-quiz"
// import "react-buzzfeed-quiz/lib/styles.css"
import "./css/game.css"

class App extends Component {

  render() {
    return (
      <div>
        <Intro />
        <Choice />
        <Game />
        <Ending />
      </div>
    )
  }
}

export default App
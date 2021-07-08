import React, { Component } from 'react'
import Game from './components/game'
import Choice from './components/choice'
import Intro from './components/intro'
import Ending from './components/ending'
import { BuzzFeedQuiz } from "react-buzzfeed-quiz"
import "./css/game.css"
import "react-buzzfeed-quiz/lib/styles.css"

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

  render() {
    return }
}

export default App
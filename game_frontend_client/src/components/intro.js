import React, { Component } from 'react'

class Intro extends Component {
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
        return (
            <div>
            </div>
        )
    }
}

export default Intro
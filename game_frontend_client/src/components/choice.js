import React, { Component } from 'react'

class Choice extends Component {

    render() {
        return (
            <div className="choice">
                <h3>{choices.choice}</h3>
                {choices.options.map(choice => <p className={`ui floating message options ${userChoice === option ? "selected" : null}`} onClick={() => this.checkAnswer(choice)}>{choice}</p>)}
            </div>
        )
    }
}


export default Choice
import React, { Component } from 'react'
import '../css/game.css'

class Game extends Component {
    render() {
        return (
            <div className="screenContainer">
                <div className="outerBox">
                    <div className="screen">
                    <div className="description"><p>{this.props.prompt}</p> </div>
                    <div className="choiceA"><button onClick={()=>{this.props.changePath(this.props.choiceA)}}><p>{this.props.choiceA}</p></button></div>
                    <div className="choiceB"><button><p>{this.props.choiceB}</p></button></div>
                </div>
            </div>
    
    
            Im the screen
        </div>
    );
}

}

export default Game
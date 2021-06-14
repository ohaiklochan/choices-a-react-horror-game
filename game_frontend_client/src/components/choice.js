import React, { Component } from 'react'
import '../css/game.css'

class Choice extends Component {

    state ={
        string: [],
        change: false
    }

    componentDidUpdate(prevProps) {
        if (this.props.prompt !== prevProps.prompt) {
            const desc = document.querySelector(".description")
            if (desc !== null) {
                desc.innerHTML = `<p className=font">${this.props.prompt}</p>`
            }
        }
        if (this.props.retry !== prevProps.retry) {
            this.setState({
                change: false
            })
        }
    }

    screenChange = () => {
        this.setState({
            change: true
        })
    }

    check = (e) => {
        if(e.target.innerText === "Bad Ending") {
            this.setState({
                change: true
            })
        }
    }


    render() {
        const question = this.props.prompt
        return (
            <div className="screenContainer">
                {this.state.change ? <div><p className="turn">Turn: {this.props.turn}</p></div> :
                <div className="outerBox">
                    <div className="description">
                        <p className="font">{this.props.prompt}</p>
                    </div>
                    {this.props.choiceA !== null ? <div className="choiceA">
                        <button onClick={(e)=>{this.props.changePath(this.props, this.props.choiceA);
                        this.check(e)}}><p>{this.props.choiceA}</p>
                        </button>
                    </div> :
                    <div className="choiceC">
                        <button onClick={this.screenChange}>
                            <p>{this.props.choiceC}</p>
                        </button>
                    </div>}
                    {this.props.choiceB !== null? <div className="choiceB">
                        <button onClick={()=>{this.props.changePath(this.props, this.props.choiceB)}}>
                            <p>{this.props.choiceB}</p>
                        </button>
                    </div> : null}

                </div>}
            </div>
        )
    }
}


export default Choice
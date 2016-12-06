import React, { PropTypes, Component } from 'react';
import ReactDOM from 'react-dom';

const content = document.getElementById('content');

class SimpleComponent extends Component {
    constructor (props) {
        super (props);
        this.state = {
            numero: 0
        };
    }

    incrementValue () {
        this.setState({numero: this.state.numero + 1})
    }
    decrementValue () {
        if (this.state.numero > 0) {
            this.setState({numero: this.state.numero -1})
        }
    }
    funcionando () {
        console.log(`El valor es ${this.state.numero}`)
    }
    resetear () {
        this.setState({numero: 0})
    }

    render () {
        return (
            <div>
                <MyTitle text={this.state.numero} />
                <MyButton onFunctionality={this.funcionando.bind(this)} buttonName="Funciona?" />
                <MyButton onFunctionality={this.decrementValue.bind(this)} buttonName="-" />
                <MyButton onFunctionality={this.incrementValue.bind(this)} buttonName={this.props.buttonName} />
                <MyButton onFunctionality={this.resetear.bind(this)} buttonName='resetear' />
            </div>
        )
    }
}

class MyTitle extends Component {
    // static get propTypes() {
    //     return {
    //         text: PropTypes.number.isRequired,
    //     }
    // }
    render () {
        return (<h1>{this.props.text}</h1>)
    }
}



class MyButton extends Component {
    render () {
        return (<button type="button" onClick={this.props.onFunctionality}>{this.props.buttonName}</button>)
    }
}

MyButton.propTypes = {
    onFunctionality: PropTypes.func.isRequired,
    buttonName: PropTypes.string.isRequired
}

ReactDOM.render( <SimpleComponent numero="Esto es un título" buttonName="+" />
, content);

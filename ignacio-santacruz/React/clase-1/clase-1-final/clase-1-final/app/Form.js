import React, { Component } from 'react'

import InputComponent from './InputComponent'
import MyButton from './MyButton'
import Titulo from './Titulo'

export default class Form extends Component {
  constructor (props) {
    super (props)
  }
  render () {
    return (
      <form action ={ this.props.action } method={this.props.method}>
        <Titulo nombre="Este titulo nuevo"/><br />
        <InputComponent type="text" placeHolder="Ingrese su nombre"/><br />
        <InputComponent type="number" placeHolder="Ingrese su DNI"/><br />
        <MyButton type="submit" text="Enviar" />
      </form>
    )
  }
}

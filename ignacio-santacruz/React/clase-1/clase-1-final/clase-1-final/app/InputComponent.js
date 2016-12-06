import React, { Component } from 'react'

export default class InputComponent extends Component {
  constructor (props) {
    super(props)
  }
  render (){
    return (
      <input type={this.props.type} placeholder={this.props.placeHolder}/>
    )
  }
}

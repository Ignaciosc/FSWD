import React, { Component } from 'react'

export default class MyButton extends Component {
  constructor (props) {
    super(props)
  }
  render () {
    return (
      <button type={this.props.type}>{this.props.text}</button>
    )
  }
}

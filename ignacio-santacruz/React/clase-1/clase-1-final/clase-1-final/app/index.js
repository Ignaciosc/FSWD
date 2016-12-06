import React, { Component } from 'react'
import ReactDOM from 'react-dom'

import Form from './Form'

const content = document.getElementById('content');

ReactDOM.render(<div>
        <Form action = '/' method='GET'/>
      </div>
, content);

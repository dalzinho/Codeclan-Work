import React, { Component } from 'react'
import About from './About'
import Home from './Home'
import Pricing from './Pricing'
import Contact from './Contact';
import {Link} from 'react-router';

class Main extends Component {

  render() {
    return (
      <div>
        {this.props.children}
      </div>
    )
  }
}

export default Main;

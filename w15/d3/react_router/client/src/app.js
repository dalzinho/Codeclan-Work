import React from 'react'
import { render } from 'react-dom'
import Main from './components/Main';
import About from './components/About';
import Pricing from './components/Pricing';
import Home from './components/Home';
import Contact from './components/Contact';
import {HashRouter, Route, Link} from 'react-router-dom';


window.onload = () => {
  render(
    <HashRouter >
      <div>
        <h4>Main App</h4>
      
        <ul>
          <li><Link to="/home">Home</Link></li>
          <li><Link to="/about">About</Link></li>
          <li><Link to="/pricing">Pricing</Link></li>
          <li><Link to="/contact">Contact</Link></li>
        </ul>

        <Route exact path="/" component={Home} />
        <Route path="/home" component={Home} />
        <Route path="/about" component={About} />
        <Route path="/pricing" component={Pricing} />
        <Route path="/contact" component={Contact} />

      </div>
    </HashRouter>,

    document.getElementById('app')
  )
}

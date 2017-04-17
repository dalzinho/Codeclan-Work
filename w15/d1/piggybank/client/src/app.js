import React from 'react';
import ReactDOM from 'react-dom';
import PiggyBank from './components/PiggyBank';

window.onload = function(){
  ReactDOM.render(
    <PiggyBank title="Piggy Bank" owner="Zaphod"/>,
    document.getElementById('app')
  );
}

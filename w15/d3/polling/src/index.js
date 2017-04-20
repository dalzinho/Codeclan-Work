import React from 'react';
import ReactDOM from 'react-dom';
import BitcoinPricer from './BitcoinPricer';
import './index.css';

ReactDOM.render(
  <BitcoinPricer url="http://api.coindesk.com/v1/bpi/currentprice.json" />,
  document.getElementById('root')
);

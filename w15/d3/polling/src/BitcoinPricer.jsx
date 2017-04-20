import React, { Component } from 'react';

class BitcoinPricer extends Component{

  constructor(props){
    super(props);
    this.state = {
      price: 0,
      colour: 'black'
    }
  }

  getData(){
    const xhr = new XMLHttpRequest();
    xhr.onload = () => {
      console.log('polled');
      const priceData = JSON.parse(xhr.responseText);
      this.setState({
        price: priceData.bpi.GBP.rate_float
      })
    };
    xhr.open('GET', this.props.url);
    xhr.send();
  }

  componentDidMount(){
    this.getData();
    setInterval(() => {this.getData()},
      10000)
  }
  

  render(){

    let priceInfo = this.state.price;
    if (!priceInfo) priceInfo = "Loading…";
    return (
      <div>
        <h1>GBP Bitcoin Price Index Rate: XBT {priceInfo}</h1>
      </div>
      )
  }
}

export default BitcoinPricer;
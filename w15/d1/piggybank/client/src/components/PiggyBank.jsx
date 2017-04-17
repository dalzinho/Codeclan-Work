import React from 'react';

class PiggyBank extends React.Component{

  constructor(props){
    super(props);
    this.state = {
      total: 0,
      inputAmount: 0,
      intact: true

    }
  }

  addToSavings(){
    if(this.state.intact){

      this.setState({
        total: this.state.total + this.state.inputAmount
      })
    } else {
      alert('Existential Crisis: Nae piggy bank')
    }
  }

  withdraw(amount){

    if(this.state.total >= this.state.inputAmount){
      this.setState({
        total: this.state.total - this.state.inputAmount
      });
    } else {
      alert('nae money, chump!');
    }
  }

  destroy(){
    this.setState({
      total: '0. Piggy Bank in tiny porcelain piggy pieces',
      intact: false
    });
  }

  handleAmountChange(event){
    this.setState({
      inputAmount: parseFloat(event.target.value)
    });
  }

  render(){
    return (
      <div>
      <h1>Big {this.props.owner}'s {this.props.title}</h1>
      <p>Total: £{this.state.total}</p>
      <input id="cash-amount" placeholder="enter amount" onChange={ (event) => {this.handleAmountChange(event)}}/>
      <button onClick={ () => { this.addToSavings() } }>Add Money</button>
      <button onClick={ () => { this.withdraw() } }>Withdraw Money</button>
      <button onClick={ () => { this.destroy() } }>Hit with Hammer</button>
      </div>
      );
  }
}

export default PiggyBank;
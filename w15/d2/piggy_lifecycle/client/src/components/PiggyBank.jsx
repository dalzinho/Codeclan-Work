import React from 'react';

class PiggyBank extends React.Component{

  constructor(props){
    console.log("Constructor…")
    super(props);
    this.state = {
      total: 0,
      inputAmount: 0,
      intact: true

    }
  }

  componentWillMount(){
    console.log("Component WILL mount!");
    const button = document.querySelector("#add-button");
    console.log(button);
  }

  componentDidMount(){
    console.log("Component DID mount!");
    const button = document.querySelector("#add-button");
    console.log(button);
  }

  componentWillUpdate(nextProps, nextState){
    console.log("Component WILL update!");
    console.log("Next Props: ", nextProps);
    console.log("Next State: ", nextState);
  }

  componentDidUpdate(prevProps, prevState){
    console.log("Component DID update!");
    console.log("Prev Props: ", prevProps);
    console.log("Prev State: ", prevState);
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
    console.log('Rendering…')
    return (
      <div>
      <h1>Big {this.props.owner}'s {this.props.title}</h1>
      <p>Total: £{this.state.total}</p>
      <input id="cash-amount" placeholder="enter amount" onChange={ (event) => {this.handleAmountChange(event)}}/>
      <button id="add-button" onClick={ () => { this.addToSavings() } }>Add Money</button>
      <button onClick={ () => { this.withdraw() } }>Withdraw Money</button>
      <button onClick={ () => { this.destroy() } }>Hit with Hammer</button>
      </div>
      );
  }
}

export default PiggyBank;
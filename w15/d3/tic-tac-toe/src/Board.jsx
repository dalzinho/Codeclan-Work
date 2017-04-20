import React from 'react';
import Square from './Square';

class Board extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      squares: Array(9).fill(null),
      xIsNext: true
    }
  }

  handleClick(i){
    const squares = this.state.squares.slice(); //make a copy of state.squares
    squares[i] = this.state.xIsNext ? 'X' : 'O'; // change copy of state.squares[i] to X
    this.setState({
      squares: squares,
      xIsNext: !this.state.xIsNext // the ! looks at the current state and flips it
    }); // set entire state with new value

  }

  renderSquare(i){
    return <Square value={this.state.squares[i]} onClick={() => {this.handleClick(i)}}/>
  }

  render(){
    return (
      <div>
      <div className="Board Row">
      {this.renderSquare(1)}
      {this.renderSquare(2)}
      {this.renderSquare(3)}
      </div>
      <div className="Board Row">
      {this.renderSquare(4)}
      {this.renderSquare(5)}
      {this.renderSquare(6)}
      </div>
      <div className="Board Row">
      {this.renderSquare(7)}
      {this.renderSquare(8)}
      {this.renderSquare(9)}
      </div>
      </div>

      )
  }
}

export default Board;
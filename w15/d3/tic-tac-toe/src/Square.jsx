import React from 'react';

function Square(props){
  return (
    <button onClick={props.onClick}>
    {props.value}
    </button>
    )
}

module.exports = Square;
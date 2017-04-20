import React from 'react';

var PersonComponent = ({name, bio, age}) => {
  render(){
    return (
      <h1>{name}</h1>
      <p>{bio}</p>
      <p>{name} is {age} years old.</p>
      )
  }
}

// the point of this is that all the jsx would have to be this.props.whatever -- mostly useful for stateless components; might be a bit of a scunner in a class?
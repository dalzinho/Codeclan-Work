import React from 'react';

class Comment extends React.Component{
  constructor(props){
    super(props);
  }

  render() {
    return (
      <div id="comment">
        <h4 id='author'>
        {this.props.author}
        </h4>
        <p>
          {this.props.children}
        </p>
      </div>
      )
  }
}

export default Comment;
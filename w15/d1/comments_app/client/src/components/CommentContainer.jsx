import React from 'react';
import CommentList from './CommentList';

var sampleData = [
  {id: 1, author: 'John', text: 'Quiche!'},
  {id: 2, author: 'Keir', text: 'Jam'}
]

class CommentContainer extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      data: sampleData
    }
  }

  render(){
    return (
      <div id="comment-container">
      <h1>Comments</h1>
      <CommentList comments={this.state.data} />
      </div>
      )
  }
}

export default CommentContainer;
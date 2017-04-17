import React from 'react';
import ReactDOM from 'react-dom';
import CommentContainer from './components/CommentContainer';

window.onload = function(){
  ReactDOM.render(
    <CommentContainer />,
    document.getElementById('app')
  );
}

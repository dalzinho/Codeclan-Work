var React = require('react');
var ReactDOM = require('react-dom');

window.onload = function(){

  var CustomComponent = React.createClass({
    render: function(){return <h1>hello world</h1>}
  });
  // var header = React.createElement('h1', null, '¡Hola mundo!'); not needed
  var appDiv = document.querySelector('#app');

  ReactDOM.render(<CustomComponent/>, appDiv);
}
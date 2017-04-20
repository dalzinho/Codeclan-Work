import React from 'react';

class CountryDetail extends React.Component {
  render(){
    if(!this.props.country){
      return null;
    }
    return (
      <div>
      <h3>
      {this.props.country.name}
      </h3>
      <ul>
      <li>Its capital city is {this.props.country.capital}.</li>
      <li>The {this.props.country.demonym}s call it {this.props.country.nativeName}.</li>
      <li>They speak {this.props.country.languages[0].name} there.</li>
      <li>The local currency is the {this.props.country.currencies[0].name}.</li>
      </ul>
      </div>
      );
  }
}

module.exports = CountryDetail;

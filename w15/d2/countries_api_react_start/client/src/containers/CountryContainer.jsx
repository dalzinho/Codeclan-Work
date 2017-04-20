import React from 'react';
import CountrySelector from '../components/CountrySelector';
import CountryDetail from '../components/CountryDetail';

class CountryContainer extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      countries: [],
    };
  }

  componentDidMount(){
    const url = "http://restcountries.eu/rest/v2/all";
    const xhr = new XMLHttpRequest();
    xhr.open('GET', url);
    xhr.onload = () => {
      this.setState({
        countries: JSON.parse(xhr.responseText)
      });
    
    this.setFocusCountry(this.state.countries[0])
    }
    xhr.send();
  }

  setFocusCountry(country){
    this.setState({
      focusCountry: country
    });
  }

  render(){
    return (
      <div>
        <h2>Country Container</h2>
        <CountrySelector
          countries={this.state.countries}
          selectCountry={ (country) => {this.setFocusCountry(country)} }/>
        <CountryDetail country={this.state.focusCountry}/>
      </div>
    );
  }
}

module.exports = CountryContainer;
import React from 'react';

class NetflixSelector extends React.Component{
 
  constructor(props){
    super(props);
  }

  handleChange(event){
    var newIndex = event.target.value;
    var selectedFilm = this.props.films[newIndex];
    this.props.selectFilm(selectedFilm);
  }


  render(){
    var filmOptions = this.props.films.map((film, index) =>{
      return <option value={index} key={index}>{film.show_title}</option>
    })
    return(
        <select onChange={(event) =>{this.handleChange(event)}}>
          <option>pick a film with {this.props.actor}</option>
          {filmOptions}
        </select>
      )
  }
}

export default NetflixSelector;
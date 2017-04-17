export default class MakeupGetter{

  constructor(brand){
    this.brand = brand;
    this.products = [];
  }

  fetchProducts(){
    const url = `http://makeup-api.herokuapp.com/api/v1/products.json?brand=${this.brand}`;

    const xhr  = new XMLHttpRequest();
    xhr.open("GET", url);
    xhr.onload = () => {
      this.products = JSON.parse(xhr.responseText);

      for(let product of this.products){
        console.log(product);
      };
      console.log(product);
    };
    xhr.send();
  }
}


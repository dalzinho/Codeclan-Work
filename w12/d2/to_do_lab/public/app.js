var todos = [];

var init = function(){
  var state = JSON.parse(localStorage.getItem('todoList')) || [];
  var list = document.querySelector('#todo-list');
  var button = document.querySelector('button');

  button.onclick = handleClick;

  populate(list, state);


}

var populate = function(list, state){
  //for each item in the state, invoke addItem
  state.forEach(function(item){
    addItem(list, item);
  });
}

var addItem = function(list, item){
  var li = document.createElement('li');
  li.innerText = item;
  list.appendChild(li);  
}

var handleClick = function(){
  //get the value of the input box
  var input = document.querySelector('#new-item');
  var inputValue = input.value;
  //get the "todo-list" element from the DOM
  var todoList = document.querySelector('#todo-list');
  //invoke addItem
  addItem(todoList, inputValue);
  //invoke save
  save(inputValue);

  input.value = "";
}

var save = function(item){
  //save the item to localStorage
  todos.push(item);
  var savedTasks = localStorage.setItem('todoList', JSON.stringify(todos));
  //NOTE You'll have to use JSON.stringify
}

window.onload = init;

//ADVANCED: create a drop-down of many to-do lists that are stored in localStorage
//HINT: you'll have to use a different data structure (an array of objects maybe?)

var todos = [];

var init = function(){
  var state = JSON.parse(localStorage.getItem('todoList')) || [];
  var list = document.querySelector('#todo-list');
  var itemButton = document.querySelector('#add-item');
  var listButton = document.querySelector('#add-list'); 

  itemButton.onclick = handleItemButtonClick;
  listButton.onclick = handListItemButtonClick;

  populateList(list, state);


}

// populate to-do-lists
var populateList = function(list, state){
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

// click handler
var handleItemButtonClick = function(){
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

// save list items to local storage
var save = function(item){
  //save the item to localStorage
  todos.push(item);
  var savedTasks = localStorage.setItem('todoList', JSON.stringify(todos));
  //NOTE You'll have to use JSON.stringify
}

// populate list of lists
var addDropDownItem = function(name){
  var select = document.querySelector('#list-o-lists');
  var option = document.createElement('option');
  option.innerText = name;
}

var populateListDropDown = function(listOfLists){
  listOfLists.forEach(function(list){
    addDropDownItem(list.name);
  });

  var handListItemButtonClick = function(){
    var input = document.querySelector('#new-list');
    var inputValue = input.value;
    var listOfLists = document.querySelector('#list-o-lists');
    list = new List(input.value);
    addDropDownItem(list.name);
  }

  var List = function(name, taskArray){
    this.name = name;
    this.taskArray = taskArray || [];
  }


  window.onload = init;

//ADVANCED: create a drop-down of many to-do lists that are stored in localStorage
//HINT: you'll have to use a different data structure (an array of objects maybe?)

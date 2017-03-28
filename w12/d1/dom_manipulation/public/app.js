// var app = function() {
//   // 1. Create parent container (article)
//  var quoteArticle = document.createElement('article');
//  quoteArticle.classList.add('quote');

//  // 2. Create first child (blockquote)
//  var blockquote = document.createElement('blockquote');
//  blockquote.innerText = "our new quote text";

// // 3. create the blockquote's child(cite)
//  var quotee = document.createElement('cite');
//  quotee.innerText = "Some Person";

// //4. Append cite to blockquote
//  blockquote.appendChild(quotee);

//  // 5. Append blockquote to article
//  quoteArticle.appendChild(blockquote);

// // 6. finally, add everything to quote list
//  var quotes = document.querySelector('#quotes');
//  quotes.appendChild(quoteArticle);
// };

var createQuoteArticle = function(){
  var quoteArticle = document.createElement('article');
  quoteArticle.classList.add('quote');
  return quoteArticle;
};

var createBlockQuote = function(quote){
 var blockquote = document.createElement('blockquote');
 blockquote.innerText = quote;
 return blockquote;
};

var createCite = function(author){
 var quotee = document.createElement('cite');
 quotee.innerText = author;
 return quotee;
};

var appendElements = function(quotes, quoteArticle, blockquote, quotee){
  blockquote.appendChild(quotee);
  quoteArticle.appendChild(blockquote);
  quotes.appendChild(quoteArticle);
};

var addQuote = function(author, quote){
  var quoteArticle = createQuoteArticle();

  var blockquote = createBlockQuote(quote);
  var cite = createCite(author);
  var quotes = document.querySelector('#quotes');
  console.log(blockquote);
  appendElements(quotes, quoteArticle, blockquote, cite);
};

var quotesArray = [
{quote: "willy-nilly - ", author: "John"},
{quote: "ahhhhhhhhhh - ", author: "John Daly"},
{quote: "jam - ", author: "Keir"}
];

var app = function(){
  for (var quote of quotesArray){
    addQuote(quote.author, quote.quote);
  }

  var body = document.querySelector('#quotes');
  body.style.visibility='hidden';

 
};


window.onload = app;

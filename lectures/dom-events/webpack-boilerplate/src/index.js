// Select an Element with ID
const list = document.querySelector('#players');
const sameListAsAboveDifferentFunctionToSelect = document.getElementById('players');
console.log(list);
console.log(sameListAsAboveDifferentFunctionToSelect);

// Add an element to the list
list.insertAdjacentHTML('beforeend', '<li>Julia</li>');
list.insertAdjacentHTML('beforeend', '<li>Eric</li>');
list.insertAdjacentHTML('afterbegin', '<li>Dan</li>');

// Select multiple elements
const colorList = document.querySelector('#colors');
const redElementlist = colorList.querySelector('.red');
console.log(redElementlist.innerText);


// Select every Fifa Winner
const countries = document.querySelectorAll('#fifa-wins li');
console.log(countries);
countries.forEach((country) => {
  console.log(country.innerText);
});

// Add a winner to the list
// grab the list
const countryList = document.querySelector('#fifa-wins');
// insert the html element;
countryList.insertAdjacentHTML('beforeend', '<li>France (2 wins)</li>');

// Adding some style to an element
countryList.style.display = 'none';
countryList.style.display = '';

// Add/Remove/Toggle the element class
const brazil = document.querySelector('#fifa-wins > li');
brazil.classList.add('border');
brazil.classList.remove('border');
brazil.classList.toggle('border');


// grab the input VALUE
const input = document.querySelector('#email');
console.log(input.value);
// Let's change the value
input.value = 'dede@menezes.com';

// Get the text of an element
const home = document.querySelector('#home');
console.log(home.innerText);
console.log(home.innerHTML);
console.log(home.attributes.href.value);

// Change HTML to => Le Wagon <strong> rocks</strong>
home.innerHTML = 'Le Wagon <strong> rocks</strong>';


// Get info from the data of an element using DATASET!
const boris = document.getElementById('user');
console.log(boris.dataset.uid);
console.log(boris.dataset.githubNickname);


// EVENTS

// 1. grab the element you want to listen on
const imgTag = document.querySelector('#romain');
console.log(imgTag);

// 2. add the event listener
// imgTag.addEventListener('click', (event) => {
//   console.log(event);
//   console.log(event.currentTarget);
//   event.currentTarget.classList.toggle('img-circle');
// });


// listening same event on multiple elements
const images = document.querySelectorAll('img');
images.forEach((element) => {
  element.addEventListener('click', (event) => {
    console.log(event.currentTarget);
    // debugger
    event.currentTarget.classList.toggle('img-circle');
  });
});

// RECAP
// FIRST THING WILL **ALWAYS** BE TO SELECT THE ELEMENTS YOU WANT TO WORK WITH
const btn = document.querySelector('#clickme');
console.log(btn);

// AFTER IT, WE CAN ADD EVENTS LISTENERS ON THE ELEMENTS
// element.addEventLister(EVENT_TYPE, EVENT_CALLBACK)
btn.addEventListener('click', (event) => {
  // INSIDE THE CALL BACK WE DEFINE WHAT IT WILL ACTUALLY
  // EVENT.CURRENTTARGET WILL REFER TO THE ELEMENT WHERE THE EVENT WAS FIRED!!!
  event.currentTarget.innerText = "Please wait...";
  event.currentTarget.setAttribute("disabled", "");
  // event.currentTarget.disabled = true; => DIFFERENT WAY TO ADD THE DISABLED ATTRIBUTE
})

// GET request
const moviesList = document.querySelector('#movies');
const searchForm = document.querySelector('#search-form');

const searchMovies = (query) => {
  const apiUrl = `http://www.omdbapi.com/?s=${query}&apikey=adf1f2d7`;
  // WHEN DOING GET REQUEST THE FETCH FUNCTION HAS ONLY ONE ARGUMENT
  // THE URL WE WILL MAKE THE REQUEST
  fetch(apiUrl)
    // SERVE WILL RESPOND WITH A JSON FILE
    // WE NEED TO PARSE THE RESPONSE INTO JAVASCRIPT OBJECT
    .then(response => response.json())
    .then((data) => {
      // AFTER IT IS PARSED WE CAN EXECUTE SOME CODE USING THE RESPONSE DATA
      // Alaways console.log(data) to know what you will be dealing with!!!
      // console.log(data);
      data.Search.forEach((movie) => {
        const movieHTML = `
          <li class="list-inline-item">
            <img src="${movie.Poster}">
            <p>${movie.Title}</p>
          </li>
        `;
        moviesList.insertAdjacentHTML('beforeend', movieHTML);
      });
    });
};

// THE FORM ELEMENT WILL ALWAYS HAVE A SUBMIT EVENT ATTACHED TO IT
// WHEN WE SUMBIT THE FORM THIS EVENT IS LAUNCHED
searchForm.addEventListener('submit', (event) => {
  // SUMBIMTTING A FORM YOU MAKE A NEW REQUEST
  // WE NEED TO PREVENT THIS DEFUALT BEHAVIOUR
  event.preventDefault();
  // CLEAR THE LIST BEFORE ADD NEW CONTENT
  moviesList.innerHTML = '';
  // get the value of the input user typed
  const inputValue = document.getElementById('search-input').value;
  // make the request
  searchMovies(inputValue);
});

searchMovies('Harry Potter');


// POST REQUEST
const createUser = (name, job) => {
  const apiUrl = "https://reqres.in/api/users";
  // WHEN DOING A POST REQUEST, THE FETCH FUNCTION TAKES TWO ARGUMENTS!!!
  // THE URL OF THE REQUEST
  // THE ""INSTRUCTIONS"" TO OUR POST REQUEST!
  // TEH SECOND ARGUMENT CONTAINS THE METHOD, THE HEADERS AND THE BODY OF YOUR POST REQUEST!
  // TO SEND THE DATA TO THE SERVER WE NEED TO CONVERT THE JAVASCRIPT OBJECT
  // SENT IN THE BODY TO A JSON STRING.
  fetch(apiUrl, {
    method: 'POST',
    headers: { "Content-Type": 'application/json' },
    body: JSON.stringify({ name: name, job: job })
  })
    // SERVE WILL RESPOND WITH A JSON FILE
    // WE NEED TO PARSE THE RESPONSE INTO JAVASCRIPT OBJECT
    .then(response => response.json())
    .then((data) => {
      // AFTER IT IS PARSED WE CAN EXECUTE SOME CODE USING THE RESPONSE DATA
      // Alaways console.log(data) to know what you will be dealing with!!!
      // console.log(data);
      console.log(data);
    });
};

// SAME STRATEGY AS BEFORE
// SELECT THE ELEMENT WEHE WE WANT TO ATTACH OUR EVENT(MICROPHONE)
const form = document.querySelector('#form');
form.addEventListener('submit', (event) => {
  // PREVENT DEFAULT BEHAVIOUR OF THE FORM
  event.preventDefault();

  // DO YOUR THING
  const nameValue = document.querySelector('#name').value;
  const jobValue = document.querySelector('#job').value;
  console.log(nameValue, jobValue);
  createUser(nameValue, jobValue);
})

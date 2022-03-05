// Don't keep using my api_key rsrsrs create yours, it's free <3
const authorization = "Bearer sk_86ee6f57f938a1770376051456b4d6e6";

// We need to select the form because
// The SUBMIT event is ONLY happens on the FORM!!!!!
const form = document.querySelector("#clearbitForm");


form.addEventListener("submit", (event) => {
  // grab input to capture the value when event is fired
  const email = document.getElementById("clearbitEmail").value

  // Make the request using the input typed by the user
  fetch(`https://person.clearbit.com/v1/people/email/${email}`, {
    headers: {
      "Authorization": authorization
    }})
    .then(response => response.json())
    .then((data) => {
      insertHTML(data)
    })
})

// Insert all the data into the HTML
const insertHTML = (data) => {
    const name = document.querySelector("#userName");
    const email = document.querySelector("#userEmail");
    const bio = document.querySelector("#userBio");
    const location = document.querySelector("#userLocation");
    name.innerText = data.name.fullName;
    email.innerText = data.email;
    bio.innerText = data.bio;
    location.innerText = data.location;
}

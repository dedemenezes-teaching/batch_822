import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["carsList", "brand", "model", "plate", "owner"]

  connect() {
    console.log("hello from garage controller!")
    this.fetchAllCars()
  }

  insertCar(car) {
    const carHTML = `
            <div class="car">
              <div class="car-image">
                <img src="http://loremflickr.com/280/280/${car.brand} ${car.model}" />
              </div>
              <div class="car-info">
                <h4>${car.brand} ${car.model}</h4>
                <p><strong>Owner:</strong> ${car.owner}</p>
                <p><strong>Plate:</strong> ${car.plate}</p>
              </div>
            </div>
          `
    this.carsListTarget.insertAdjacentHTML('beforeend', carHTML)
  }

  fetchAllCars() {
    // 1. Fetch all cars from the API with GET AJAX request
    fetch("https://wagon-garage-api.herokuapp.com/batch-822/cars")
      .then(response => response.json())
      .then((data) => {
        // 2. Iterate over all cars
        data.forEach((car) => {
          // 3. insert into our HTML
          this.insertCar(car)
        })
      })
  }

  createNewCar(event) {
    event.preventDefault()
    const newCar = {
      "brand": this.brandTarget.value,
      "model": this.modelTarget.value,
      "owner": this.ownerTarget.value,
      "plate": this.plateTarget.value
    }
    // send this ionformatiuo to our server using fetch
    fetch("https://wagon-garage-api.herokuapp.com/batch-822/cars", {
      method: 'POST',
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(newCar)
    })
      .then(response => response.json())
      .then((data) => {
        // console.log(data)
        this.insertCar(data);
      })

    event.currentTarget.reset()
  }
}

// {
//   "brand": "PEUGEOT",
//     "model": "106",
//       "owner": "ssaunier",
//         "plate": "123AZ56"
// }



// brand: "PEUGEOT"
// created_at: "2022-02-17T20:19:39.780Z"
// garage: "batch-822"
// id: 12420
// model: "208"
// owner: "Mariana"
// plate: "123AZ56"
// updated_at: "2022-02-17T20:19:39.780Z"

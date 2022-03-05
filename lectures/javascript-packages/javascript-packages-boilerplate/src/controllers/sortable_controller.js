import { Controller } from "@hotwired/stimulus";
import Sortable from "sortablejs";

export default class extends Controller {
  connect() {
    // console.log('sortable controller connected');
    Sortable.create(this.element, {
      ghostClass: "ghost",
      animation: 150,
      onEnd: (event) => {
        alert(`${event.oldIndex} moved to ${event.newIndex}`);
      }
    });
  }
}
